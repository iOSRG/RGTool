#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "BaseToolHeader.h"
#import "ProjectTool.h"
#import "PublicFunction.h"
#import "SystemTool.h"
#import "VCTool.h"

FOUNDATION_EXPORT double RGToolVersionNumber;
FOUNDATION_EXPORT const unsigned char RGToolVersionString[];

