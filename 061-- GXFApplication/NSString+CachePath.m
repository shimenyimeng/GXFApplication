//
//  NSString+CachePath.m
//  061-- GXFApplication
//
//  Created by 顾雪飞 on 17/4/17.
//  Copyright © 2017年 顾雪飞. All rights reserved.
//

#import "NSString+CachePath.h"

@implementation NSString (CachePath)

- (NSString *)getPath {
    
    NSString *sandBox = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).lastObject;
    return [self stringByAppendingString:sandBox];
}

@end
