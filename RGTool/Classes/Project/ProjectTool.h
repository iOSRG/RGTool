//
//  ProjectTool.h
//  MVCDemo
//
//  Created by 浮生似梦、Dream on 2018/11/16.
//  Copyright © 2018年 浮生似梦、Dream. All rights reserved.
//

#import <Foundation/Foundation.h>

NSString * emptyString(NSString *anMaybeEmptyString);


@interface ProjectTool : NSObject

///获取APP版本号
+ (NSString *)getAppVersion;

///是否更新
+ (BOOL)canUpdateApp:(NSString *)newestVersion;

+ (void)forceChineseLanguage;


@end
