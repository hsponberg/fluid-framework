//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src-delomboked/com/sponberg/fluid/LoggingService.java
//

#ifndef _FFTLoggingService_H_
#define _FFTLoggingService_H_

#import "JreEmulation.h"

@protocol FFTLoggingService < NSObject, JavaObject >

- (void)logMessageWithNSString:(NSString *)message;

- (void)logErrorWithNSString:(NSString *)message;

@end

__attribute__((always_inline)) inline void FFTLoggingService_init() {}

#define ComSponbergFluidLoggingService FFTLoggingService

#endif // _FFTLoggingService_H_
