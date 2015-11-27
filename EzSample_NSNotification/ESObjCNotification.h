//
//  ESObjCNotification.h
//  EzSample_NSNotification
//
//  Created by Tomohiro Kumagai on H27/11/27.
//  Copyright © 平成27年 EasyStyle G.K. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ESNotification/ESNotification-Swift.h>

@interface ESObjCNotification : NSObject <ESNotification>

@property (readwrite) NSInteger code;

- (instancetype)initWithCode:(NSInteger)code;

@end
