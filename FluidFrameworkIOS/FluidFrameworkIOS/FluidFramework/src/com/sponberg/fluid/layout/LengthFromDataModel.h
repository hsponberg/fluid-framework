//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src-delomboked/com/sponberg/fluid/layout/LengthFromDataModel.java
//

#ifndef _FFTLengthFromDataModel_H_
#define _FFTLengthFromDataModel_H_

#import "JreEmulation.h"
#include "com/sponberg/fluid/layout/Length.h"

@interface FFTLengthFromDataModel : FFTLength {
 @public
  NSString *key_;
}

- (id)initWithNSString:(NSString *)key;

- (BOOL)isFromDataModel;

- (NSString *)getDataModelKey;

- (NSString *)description;

- (NSString *)getKey;

- (void)setKeyWithNSString:(NSString *)key;

- (void)copyAllFieldsTo:(FFTLengthFromDataModel *)other;

@end

__attribute__((always_inline)) inline void FFTLengthFromDataModel_init() {}

J2OBJC_FIELD_SETTER(FFTLengthFromDataModel, key_, NSString *)

typedef FFTLengthFromDataModel ComSponbergFluidLayoutLengthFromDataModel;

#endif // _FFTLengthFromDataModel_H_
