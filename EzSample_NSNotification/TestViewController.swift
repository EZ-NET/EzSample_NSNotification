//
//  TestViewController.swift
//  EzSample_NSNotification
//
//  Created by Tomohiro Kumagai on H27/11/20.
//  Copyright © 平成27年 EasyStyle G.K. All rights reserved.
//

import Cocoa
import ESNotification

let ESSampleLegacyNotification = "ESSampleLegacyNotification"

final class TestViewController : NSViewController {
	
	@IBOutlet private var printTextView: NSTextView!
	
	func print(text: String) {
		
		let message = "\(NSDate()): \(text)"
		self.printTextView.string = "\(message)\n\(self.printTextView.string!)"
	}
	
	@IBAction func clearTextView(sender:AnyObject) {
		
		self.printTextView.string = ""
	}
	
	let notificationCenter = NSNotificationCenter.defaultCenter()
	
	override func viewWillAppear() {
		
		super.viewWillAppear()
		
		notificationCenter.addObserver(self, selector: "sampleNotificationReceived:", name: ESSampleLegacyNotification, object: nil)
		notificationCenter.addObserver(self, selector: "locationChangedNotificationReceived:", name: LocationChangedNotification.notificationIdentifier, object: nil)
		
		self.performSelector("observingByObjC")
		
		LocationChangedNotification.observeBy(self) { notification in
			
			self.print("Received by ESNotification: \(notification)")
		}
		
		NamedNotification.observe(ESSampleLegacyNotification, by: self) { notification in
			
			self.print("Received by NamedNotification: \(notification)")
		}
	}
	
	override func viewWillDisappear() {
		
		super.viewWillDisappear()
		
		self.performSelector("ReleaseObservingByObjC")
		
		notificationCenter.removeObserver(self, name: ESSampleLegacyNotification, object: nil)
	}
	
	func locationChangedNotificationReceived(notification: NSNotification) {
	
		print("Received by NSNotificationCenter: \(notification)")
	}
	
	func sampleNotificationReceived(notification: NSNotification) {
		
		print("Received: \(notification)")
	}
}
