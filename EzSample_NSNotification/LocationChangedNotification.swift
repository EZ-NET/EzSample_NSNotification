//
//  LocationChangedNotification.swift
//  EzSample_NSNotification
//
//  Created by Tomohiro Kumagai on H27/11/24.
//  Copyright © 平成27年 EasyStyle G.K. All rights reserved.
//

import ESNotification

final class LocationChangedNotification : Notification {
	
	var x: Int
	var y: Int
	
	init(x: Int, y: Int) {
		
		self.x = x
		self.y = y
	}
}
