//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src-delomboked/com/sponberg/fluid/layout/ViewPosition.java
//

#ifndef _FFTViewPosition_H_
#define _FFTViewPosition_H_

@class FFTView;
@class FFTViewBehavior;

#import "JreEmulation.h"

@interface FFTViewPosition : NSObject {
 @public
  NSString *id__;
  NSString *key_;
  NSString *visibleCondition_;
  FFTViewBehavior *viewBehavior_;
  double x_;
  double y_;
  double width_;
  double height_;
  BOOL visible_;
  NSString *viewPathKey_;
}

- (id)initWithNSString:(NSString *)viewPath
           withFFTView:(FFTView *)view;

- (id)initWithNSString:(NSString *)viewPathKey
               withInt:(int)height;

- (id)initWithNSString:(NSString *)id_
          withNSString:(NSString *)key
          withNSString:(NSString *)visibleCondition
            withDouble:(double)x
            withDouble:(double)y
            withDouble:(double)width
            withDouble:(double)height
           withBoolean:(BOOL)visible
          withNSString:(NSString *)viewPathKey;

- (NSString *)getValueWithNSString:(NSString *)prefix
                      withNSString:(NSString *)keys
                      withNSString:(NSString *)messageFormat;

- (void)setValueWithNSString:(NSString *)prefix
                withNSString:(NSString *)key
                      withId:(id)value;

- (NSString *)getId;

- (NSString *)getKey;

- (NSString *)getVisibleCondition;

- (FFTViewBehavior *)getViewBehavior;

- (double)getX;

- (double)getY;

- (double)getWidth;

- (double)getHeight;

- (BOOL)isVisible;

- (NSString *)getViewPathKey;

- (void)setViewBehaviorWithFFTViewBehavior:(FFTViewBehavior *)viewBehavior;

- (BOOL)isEqual:(id)o;

- (BOOL)canEqualWithId:(id)other;

- (NSUInteger)hash;

- (NSString *)description;

- (void)copyAllFieldsTo:(FFTViewPosition *)other;

@end

__attribute__((always_inline)) inline void FFTViewPosition_init() {}

J2OBJC_FIELD_SETTER(FFTViewPosition, id__, NSString *)
J2OBJC_FIELD_SETTER(FFTViewPosition, key_, NSString *)
J2OBJC_FIELD_SETTER(FFTViewPosition, visibleCondition_, NSString *)
J2OBJC_FIELD_SETTER(FFTViewPosition, viewBehavior_, FFTViewBehavior *)
J2OBJC_FIELD_SETTER(FFTViewPosition, viewPathKey_, NSString *)

typedef FFTViewPosition ComSponbergFluidLayoutViewPosition;

#endif // _FFTViewPosition_H_