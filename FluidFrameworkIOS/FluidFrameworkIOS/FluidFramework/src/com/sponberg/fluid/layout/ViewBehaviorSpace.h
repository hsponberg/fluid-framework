//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src-delomboked/com/sponberg/fluid/layout/ViewBehaviorSpace.java
//

#ifndef _FFTViewBehaviorSpace_H_
#define _FFTViewBehaviorSpace_H_

@protocol FFTKeyValueList;

#import "JreEmulation.h"
#include "com/sponberg/fluid/layout/ViewBehavior.h"

@interface FFTViewBehaviorSpace : FFTViewBehavior {
}

- (id)initWithFFTKeyValueList:(id<FFTKeyValueList>)properties;

- (BOOL)isShouldBePresentedToUI;

- (NSString *)description;

@end

__attribute__((always_inline)) inline void FFTViewBehaviorSpace_init() {}

typedef FFTViewBehaviorSpace ComSponbergFluidLayoutViewBehaviorSpace;

#endif // _FFTViewBehaviorSpace_H_