//
//  ViewController.swift
//  EzSample_NSNotification
//
//  Created by Tomohiro Kumagai on H27/11/20.
//  Copyright © 平成27年 EasyStyle G.K. All rights reserved.
//

import Cocoa
import ESNotification

final class ViewController: NSViewController {
	
	let notificationCenter = NSNotificationCenter.defaultCenter()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
	}
	
	@IBAction func postSampleNotification(sender:AnyObject) {
		
		let notification = NSNotification(name: ESSampleLegacyNotification, object: self, userInfo: nil)
		
		notificationCenter.postNotification(notification)
	}
	
	@IBAction func postSampleNotificationUsingNamedNotification(sender:AnyObject) {
		
		NamedNotification(ESSampleLegacyNotification, object: self, userInfo: nil).post()
	}
	
	@IBAction func postLocationChangedNotification(sender:AnyObject) {
		
		LocationChangedNotification(x:10, y:3).post()
	}
	
	@IBAction func postLocationChangedNotificationViaNSNotification(sender:AnyObject) {
		
		let notification = LocationChangedNotification(x: 8, y: 2)
		
		NSNotificationCenter.defaultCenter().postNotification(notification.makeRawNotification())
	}
}

