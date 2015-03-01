//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src-delomboked/com/sponberg/fluid/layout/CoordRelativeToParent.java
//

#include "com/sponberg/fluid/layout/CoordRelativeToParent.h"
#include "java/util/ArrayList.h"

@implementation FFTCoordRelativeToParent

- (id)initWithNSString:(NSString *)edge
 withJavaUtilArrayList:(JavaUtilArrayList *)subtractors {
  if (self = [super init]) {
    self->edge_ = edge;
    if (subtractors != nil) {
      [((JavaUtilArrayList *) nil_chk(self->subtractors_)) addAllWithJavaUtilCollection:subtractors];
    }
  }
  return self;
}

- (BOOL)isRelativeToParent {
  return YES;
}

- (NSString *)getRelativeEdge {
  return edge_;
}

- (NSString *)description {
  return [NSString stringWithFormat:@"CoordRelativeToParent(edge=%@)", [self getEdge]];
}

- (NSString *)getEdge {
  return self->edge_;
}

- (void)copyAllFieldsTo:(FFTCoordRelativeToParent *)other {
  [super copyAllFieldsTo:other];
  other->edge_ = edge_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withJavaUtilArrayList:", "CoordRelativeToParent", NULL, 0x1, NULL },
    { "isRelativeToParent", NULL, "Z", 0x1, NULL },
    { "getRelativeEdge", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
    { "getEdge", NULL, "Ljava.lang.String;", 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "edge_", NULL, 0x10, "Ljava.lang.String;", NULL,  },
  };
  static J2ObjcClassInfo _FFTCoordRelativeToParent = { "CoordRelativeToParent", "com.sponberg.fluid.layout", NULL, 0x1, 5, methods, 1, fields, 0, NULL};
  return &_FFTCoordRelativeToParent;
}

@end