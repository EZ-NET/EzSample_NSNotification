//
//  TestViewController+ObjCPost.m
//  EzSample_NSNotification
//
//  Created by Tomohiro Kumagai on H27/11/27.
//  Copyright © 平成27年 EasyStyle G.K. All rights reserved.
//

#import "TestViewController+ObjCPost.h"

@implementation TestViewController (ObjCPost)

- (void)observingByObjC
{
	NSNotificationCenter* notificationCenter = [NSNotificationCenter defaultCenter];
	
	[notificationCenter addObserver:self selector:@selector(objcNotificationReceived:) ESNotification:[ESObjCNotification class] object:nil];
}

- (void)releaseObservingByObjC
{
	NSNotificationCenter* notificationCenter = [NSNotificationCenter defaultCenter];

	[notificationCenter removeObserver:self ESNotification:[ESObjCNotification class] object:nil];
}

- (void)objcNotificationReceived:(NSNotification*)notification
{
	ESObjCNotification* notice = notification.object;
	
	[self print:[[NSString alloc] initWithFormat:@"Received by ObjC : %@ (%@)", NSStringFromClass([notice class]), @(notice.code)]];
}

@end
