//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src-delomboked/com/sponberg/fluid/layout/ViewHistory.java
//

#ifndef _FFTViewHistory_H_
#define _FFTViewHistory_H_

#import "JreEmulation.h"

@interface FFTViewHistory : NSObject {
 @public
  NSString *currentTabScreenId_;
  NSString *lastTabScreenId_;
}

- (id)init;

- (NSString *)getCurrentTabScreenId;

- (NSString *)getLastTabScreenId;

- (void)setCurrentTabScreenIdWithNSString:(NSString *)currentTabScreenId;

- (void)setLastTabScreenIdWithNSString:(NSString *)lastTabScreenId;

- (BOOL)isEqual:(id)o;

- (BOOL)canEqualWithId:(id)other;

- (NSUInteger)hash;

- (NSString *)description;

- (void)copyAllFieldsTo:(FFTViewHistory *)other;

@end

__attribute__((always_inline)) inline void FFTViewHistory_init() {}

J2OBJC_FIELD_SETTER(FFTViewHistory, currentTabScreenId_, NSString *)
J2OBJC_FIELD_SETTER(FFTViewHistory, lastTabScreenId_, NSString *)

typedef FFTViewHistory ComSponbergFluidLayoutViewHistory;

#endif // _FFTViewHistory_H_
