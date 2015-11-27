//
//  ViewController+NotificationObserver.swift
//  EzSample_NSNotification
//
//  Created by Tomohiro Kumagai on 2015/11/25.
//  Copyright © 2015年 EasyStyle G.K. All rights reserved.
//

import ESNotification
import Cocoa

extension ViewController : NotificationObservable {

	override func viewWillAppear() {
		super.viewWillAppear()
		
		self.observeNotification { (notification: LocationChangedNotification) in
		
			self.print("Received by ESNotification: \(notification)")			
		}
	}
	
	override func viewWillDisappear() {
		super.viewWillDisappear()
		
		self.releaseObservingNotifications()
	}
}