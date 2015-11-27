//
//  ESObjCNotification.m
//  EzSample_NSNotification
//
//  Created by Tomohiro Kumagai on H27/11/27.
//  Copyright © 平成27年 EasyStyle G.K. All rights reserved.
//

#import "ESObjCNotification.h"

@implementation ESObjCNotification

- (instancetype)initWithCode:(NSInteger)code
{
	self = [super init];
	
	if (self)
	{
		_code = code;
	}
	
	return self;
}

@end
