//
//  ViewController+ObjCPost.m
//  EzSample_NSNotification
//
//  Created by Tomohiro Kumagai on H27/11/27.
//  Copyright © 平成27年 EasyStyle G.K. All rights reserved.
//

#import "ViewController+ObjCPost.h"

@implementation ViewController (ObjCPost)

- (void)postNotificationByObjC
{
	NSNotificationCenter* notificationCenter = [NSNotificationCenter defaultCenter];
	ESObjCNotification* notification = [[ESObjCNotification alloc] initWithCode:200];
	
	[notificationCenter postESNotification:notification];
}

@end
