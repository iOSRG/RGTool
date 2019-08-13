//
//  ProjectTool.m
//  MVCDemo
//
//  Created by 浮生似梦、Dream on 2018/11/16.
//  Copyright © 2018年 浮生似梦、Dream. All rights reserved.
//

#import "ProjectTool.h"


NSString * emptyString(NSString *anMaybeEmptyString) {
    if ([anMaybeEmptyString isKindOfClass:[NSNumber class]]) {
        anMaybeEmptyString = [NSString stringWithFormat:@"%@",anMaybeEmptyString];
        //直接传入精度丢失有问题的Double类型
        double conversionValue = [anMaybeEmptyString doubleValue];
        NSString *doubleString = [NSString stringWithFormat:@"%lf", conversionValue];
        NSDecimalNumber *decNumber = [NSDecimalNumber decimalNumberWithString:doubleString];
        anMaybeEmptyString =  [decNumber stringValue];
        
    }
    if (!anMaybeEmptyString || [anMaybeEmptyString isKindOfClass:[NSNull class]] || [anMaybeEmptyString length] == 0) return @"";
    else return anMaybeEmptyString;
}



@implementation ProjectTool


+ (NSString *)getAppVersion {
 
    NSDictionary *infoDic = [[NSBundle mainBundle] infoDictionary];
    NSString *currentVersion = [NSString stringWithFormat:@"%@",[infoDic objectForKey:@"CFBundleShortVersionString"]];
    return currentVersion.length ? currentVersion : @"";
}


+ (BOOL)canUpdateApp:(NSString *)newestVersion {
 
    NSArray *newestArr = [newestVersion componentsSeparatedByString:@"."];
    NSArray *currentArr = [[self getAppVersion] componentsSeparatedByString:@"."];
    
    NSInteger count = MIN(currentArr.count, currentArr.count);
    
    BOOL update = NO;
    for (NSInteger i = 0; i < count; i++) {
        
        NSInteger newNum = [newestArr[i] integerValue];
        NSInteger currentNum = [currentArr[i] integerValue];
        if (newNum > currentNum) {
            update = YES;
            break;
        }
        
        if (newNum < currentNum) {
            break;
        }
    }
    return update;
    
}

+ (void)forceChineseLanguage {
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    NSArray *language = [NSArray arrayWithObjects:@"zh-hans",nil];
    [userDefaults setObject:language forKey:@"AppleLanguages"];
    [userDefaults synchronize];
    
}

@end
