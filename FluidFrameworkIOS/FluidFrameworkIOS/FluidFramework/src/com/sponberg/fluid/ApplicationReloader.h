//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src-delomboked/com/sponberg/fluid/ApplicationReloader.java
//

#ifndef _FFTApplicationReloader_H_
#define _FFTApplicationReloader_H_

@class FFTFluidApp;

#import "JreEmulation.h"
#include "com/sponberg/fluid/PlatformSpecifier.h"

@protocol FFTApplicationReloader < FFTPlatformSpecifier, NSObject, JavaObject >
- (void)reloadWithFFTFluidApp:(FFTFluidApp *)app;

@end

__attribute__((always_inline)) inline void FFTApplicationReloader_init() {}

#define ComSponbergFluidApplicationReloader FFTApplicationReloader

#endif // _FFTApplicationReloader_H_