//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src-delomboked/com/sponberg/app/ui/SearchWhereAndroid.java
//

#ifndef _FASearchWhereAndroid_H_
#define _FASearchWhereAndroid_H_

@class FFTActionListener_EventInfo;
@class FFTFluidApp;
@class IOSObjectArray;

#import "JreEmulation.h"
#include "com/sponberg/app/ui/SearchWhere.h"
#include "com/sponberg/fluid/layout/ActionListenerAdapter.h"

@interface FASearchWhereAndroid : FASearchWhere {
}

- (void)load__WithFFTFluidApp:(FFTFluidApp *)fApp;

- (IOSObjectArray *)getSupportedPlatforms;

- (id)init;

@end

__attribute__((always_inline)) inline void FASearchWhereAndroid_init() {}

typedef FASearchWhereAndroid ComSponbergAppUiSearchWhereAndroid;

@interface FASearchWhereAndroid_$1 : FFTActionListenerAdapter {
 @public
  FASearchWhereAndroid *this$0_;
}

- (void)userChangedValueToWithFFTActionListener_EventInfo:(FFTActionListener_EventInfo *)info
                                                   withId:(id)value;

- (id)initWithFASearchWhereAndroid:(FASearchWhereAndroid *)outer$;

@end

__attribute__((always_inline)) inline void FASearchWhereAndroid_$1_init() {}

J2OBJC_FIELD_SETTER(FASearchWhereAndroid_$1, this$0_, FASearchWhereAndroid *)

@interface FASearchWhereAndroid_$2 : FFTActionListenerAdapter {
 @public
  FASearchWhereAndroid *this$0_;
}

- (void)userTappedWithFFTActionListener_EventInfo:(FFTActionListener_EventInfo *)info;

- (id)initWithFASearchWhereAndroid:(FASearchWhereAndroid *)outer$;

@end

__attribute__((always_inline)) inline void FASearchWhereAndroid_$2_init() {}

J2OBJC_FIELD_SETTER(FASearchWhereAndroid_$2, this$0_, FASearchWhereAndroid *)

#endif // _FASearchWhereAndroid_H_
