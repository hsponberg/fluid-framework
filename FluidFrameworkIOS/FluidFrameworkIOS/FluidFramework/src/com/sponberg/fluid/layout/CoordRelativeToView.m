//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src-delomboked/com/sponberg/fluid/layout/CoordRelativeToView.java
//

#include "com/sponberg/fluid/layout/CoordRelativeToView.h"
#include "java/util/ArrayList.h"

@implementation FFTCoordRelativeToView

- (id)initWithNSString:(NSString *)edge
          withNSString:(NSString *)viewId
 withJavaUtilArrayList:(JavaUtilArrayList *)subtractors {
  if (self = [super init]) {
    self->edge_ = edge;
    self->viewId_ = viewId;
    if (subtractors != nil) {
      [((JavaUtilArrayList *) nil_chk(self->subtractors_)) addAllWithJavaUtilCollection:subtractors];
    }
  }
  return self;
}

- (BOOL)isRelativeToView {
  return YES;
}

- (NSString *)getRelativeId {
  return viewId_;
}

- (NSString *)getRelativeEdge {
  return edge_;
}

- (NSString *)description {
  return [NSString stringWithFormat:@"CoordRelativeToView(edge=%@, viewId=%@)", [self getEdge], [self getViewId]];
}

- (NSString *)getEdge {
  return self->edge_;
}

- (NSString *)getViewId {
  return self->viewId_;
}

- (void)copyAllFieldsTo:(FFTCoordRelativeToView *)other {
  [super copyAllFieldsTo:other];
  other->edge_ = edge_;
  other->viewId_ = viewId_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withNSString:withJavaUtilArrayList:", "CoordRelativeToView", NULL, 0x1, NULL },
    { "isRelativeToView", NULL, "Z", 0x1, NULL },
    { "getRelativeId", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "getRelativeEdge", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
    { "getEdge", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "getViewId", NULL, "Ljava.lang.String;", 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "edge_", NULL, 0x10, "Ljava.lang.String;", NULL,  },
    { "viewId_", NULL, 0x10, "Ljava.lang.String;", NULL,  },
  };
  static J2ObjcClassInfo _FFTCoordRelativeToView = { "CoordRelativeToView", "com.sponberg.fluid.layout", NULL, 0x1, 7, methods, 2, fields, 0, NULL};
  return &_FFTCoordRelativeToView;
}

@end