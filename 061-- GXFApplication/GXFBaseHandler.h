//
//  GXFBaseHandler.h
//  061-- GXFApplication
//
//  Created by 顾雪飞 on 17/4/17.
//  Copyright © 2017年 顾雪飞. All rights reserved.
// 用于处理业务

#import <Foundation/Foundation.h>

@interface GXFBaseHandler : NSObject

typedef void (^CompletionBlock)();

typedef void (^successBlock)();

typedef void (^failedBlock)();

@end
