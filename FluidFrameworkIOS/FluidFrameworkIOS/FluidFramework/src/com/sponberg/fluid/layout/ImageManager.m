//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src-delomboked/com/sponberg/fluid/layout/ImageManager.java
//

#include "IOSObjectArray.h"
#include "com/sponberg/fluid/FluidApp.h"
#include "com/sponberg/fluid/GlobalState.h"
#include "com/sponberg/fluid/ResourceService.h"
#include "com/sponberg/fluid/layout/ImageManager.h"
#include "com/sponberg/fluid/layout/ViewManager.h"
#include "com/sponberg/fluid/util/Logger.h"
#include "java/io/BufferedReader.h"
#include "java/io/IOException.h"
#include "java/io/StringReader.h"
#include "java/lang/Integer.h"
#include "java/util/ArrayList.h"
#include "java/util/HashMap.h"

@implementation FFTImageManager

- (void)initialize__WithFFTFluidApp:(FFTFluidApp *)app {
  [self readImagesFileWithFFTFluidApp:app];
}

- (void)readImagesFileWithFFTFluidApp:(FFTFluidApp *)app {
  @try {
    JavaIoBufferedReader *in = [[JavaIoBufferedReader alloc] initWithJavaIoReader:[[JavaIoStringReader alloc] initWithNSString:[((id<FFTResourceService>) nil_chk([((FFTFluidApp *) nil_chk(app)) getResourceService])) getResourceAsStringWithNSString:@"generated" withNSString:@"images.txt"]]];
    NSString *line;
    while ((line = [in readLine]) != nil) {
      IOSObjectArray *sa = [((NSString *) nil_chk(line)) split:@":"];
      JavaUtilArrayList *images = [[JavaUtilArrayList alloc] init];
      (void) [((JavaUtilHashMap *) nil_chk(imagesByName_)) putWithId:IOSObjectArray_Get(nil_chk(sa), 0) withId:images];
      for (int index = 1; index < (int) [sa count]; index += 2) {
        NSString *key = IOSObjectArray_Get(sa, index);
        IOSObjectArray *d = [((NSString *) IOSObjectArray_Get(sa, index + 1)) split:@","];
        [images addWithId:[[FFTImage alloc] initWithNSString:key withInt:[JavaLangInteger parseIntWithNSString:IOSObjectArray_Get(nil_chk(d), 0)] withInt:[JavaLangInteger parseIntWithNSString:IOSObjectArray_Get(d, 1)]]];
      }
    }
  }
  @catch (JavaIoIOException *e) {
    [FFTLogger errorWithId:self withJavaLangThrowable:e];
  }
}

- (NSString *)getImageNameWithNSString:(NSString *)key
                               withInt:(int)w
                               withInt:(int)h {
  w = J2ObjCFpToInt((1.0 / [((FFTViewManager *) nil_chk([((FFTFluidApp *) nil_chk(FFTGlobalState_get_fluidApp__())) getViewManager])) getDevicePixelActualMultiplier] * w));
  h = J2ObjCFpToInt((1.0 / [((FFTViewManager *) nil_chk([FFTGlobalState_get_fluidApp__() getViewManager])) getDevicePixelActualMultiplier] * h));
  JavaUtilArrayList *images = [((JavaUtilHashMap *) nil_chk(imagesByName_)) getWithId:key];
  if (images == nil) {
    return nil;
  }
  for (int index = 0; index < [((JavaUtilArrayList *) nil_chk(images)) size]; index++) {
    FFTImage *i = [images getWithInt:index];
    if (((FFTImage *) nil_chk(i))->w_ >= w) {
      return [NSString stringWithFormat:@"%@@%@.png", key, i->key_];
    }
  }
  return [NSString stringWithFormat:@"%@@%@.png", key, ((FFTImage *) nil_chk([images getWithInt:[images size] - 1]))->key_];
}

- (double)getImageAspectRatioWithNSString:(NSString *)key {
  JavaUtilArrayList *images = [((JavaUtilHashMap *) nil_chk(imagesByName_)) getWithId:key];
  if (images == nil) {
    return 1.0;
  }
  FFTImage *i = [((JavaUtilArrayList *) nil_chk(images)) getWithInt:0];
  return ((FFTImage *) nil_chk(i))->w_ * 1.0 / i->h_;
}

- (FFTImageBounds *)getImageBoundsWithNSString:(NSString *)key
                                       withInt:(int)w
                                       withInt:(int)h {
  JavaUtilArrayList *images = [((JavaUtilHashMap *) nil_chk(imagesByName_)) getWithId:key];
  if (images == nil) {
    return nil;
  }
  for (int index = 0; index < [((JavaUtilArrayList *) nil_chk(images)) size]; index++) {
    FFTImage *i = [images getWithInt:index];
    if (((FFTImage *) nil_chk(i))->w_ > w) {
      return [[FFTImageBounds alloc] initWithFFTImage:i];
    }
  }
  return [[FFTImageBounds alloc] initWithFFTImage:[images getWithInt:[images size] - 1]];
}

- (IOSObjectArray *)getSupportedPlatforms {
  return nil;
}

- (id)init {
  if (self = [super init]) {
    imagesByName_ = [[JavaUtilHashMap alloc] init];
  }
  return self;
}

- (void)copyAllFieldsTo:(FFTImageManager *)other {
  [super copyAllFieldsTo:other];
  other->imagesByName_ = imagesByName_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initialize__WithFFTFluidApp:", "initialize", "V", 0x1, NULL },
    { "readImagesFileWithFFTFluidApp:", "readImagesFile", "V", 0x1, NULL },
    { "getImageNameWithNSString:withInt:withInt:", "getImageName", "Ljava.lang.String;", 0x1, NULL },
    { "getImageAspectRatioWithNSString:", "getImageAspectRatio", "D", 0x1, NULL },
    { "getImageBoundsWithNSString:withInt:withInt:", "getImageBounds", "Lcom.sponberg.fluid.layout.ImageBounds;", 0x1, NULL },
    { "getSupportedPlatforms", NULL, "[Ljava.lang.String;", 0x1, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "imagesByName_", NULL, 0x0, "Ljava.util.HashMap;", NULL,  },
  };
  static J2ObjcClassInfo _FFTImageManager = { "ImageManager", "com.sponberg.fluid.layout", NULL, 0x1, 7, methods, 1, fields, 0, NULL};
  return &_FFTImageManager;
}

@end

@implementation FFTImageBounds

- (id)initWithFFTImage:(FFTImage *)image {
  if (self = [super init]) {
    self->w_ = ((FFTImage *) nil_chk(image))->w_;
    self->h_ = image->h_;
  }
  return self;
}

- (int)getW {
  return self->w_;
}

- (int)getH {
  return self->h_;
}

- (BOOL)isEqual:(id)o {
  if (o == self) return YES;
  if (!([o isKindOfClass:[FFTImageBounds class]])) return NO;
  FFTImageBounds *other = (FFTImageBounds *) check_class_cast(o, [FFTImageBounds class]);
  if (![((FFTImageBounds *) nil_chk(other)) canEqualWithId:(id) check_class_cast(self, [NSObject class])]) return NO;
  if ([self getW] != [other getW]) return NO;
  if ([self getH] != [other getH]) return NO;
  return YES;
}

- (BOOL)canEqualWithId:(id)other {
  return [other isKindOfClass:[FFTImageBounds class]];
}

- (NSUInteger)hash {
  int PRIME = 59;
  int result = 1;
  result = result * PRIME + [self getW];
  result = result * PRIME + [self getH];
  return result;
}

- (NSString *)description {
  return [NSString stringWithFormat:@"ImageBounds(w=%d, h=%d)", [self getW], [self getH]];
}

- (void)copyAllFieldsTo:(FFTImageBounds *)other {
  [super copyAllFieldsTo:other];
  other->h_ = h_;
  other->w_ = w_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithFFTImage:", "ImageBounds", NULL, 0x1, NULL },
    { "getW", NULL, "I", 0x1, NULL },
    { "getH", NULL, "I", 0x1, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL },
    { "canEqualWithId:", "canEqual", "Z", 0x4, NULL },
    { "hash", "hashCode", "I", 0x1, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "w_", NULL, 0x10, "I", NULL,  },
    { "h_", NULL, 0x10, "I", NULL,  },
  };
  static J2ObjcClassInfo _FFTImageBounds = { "ImageBounds", "com.sponberg.fluid.layout", NULL, 0x0, 7, methods, 2, fields, 0, NULL};
  return &_FFTImageBounds;
}

@end

@implementation FFTImage

- (id)initWithNSString:(NSString *)key
               withInt:(int)w
               withInt:(int)h {
  if (self = [super init]) {
    self->key_ = key;
    self->w_ = w;
    self->h_ = h;
  }
  return self;
}

- (void)copyAllFieldsTo:(FFTImage *)other {
  [super copyAllFieldsTo:other];
  other->h_ = h_;
  other->key_ = key_;
  other->w_ = w_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withInt:withInt:", "Image", NULL, 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "key_", NULL, 0x10, "Ljava.lang.String;", NULL,  },
    { "w_", NULL, 0x10, "I", NULL,  },
    { "h_", NULL, 0x10, "I", NULL,  },
  };
  static J2ObjcClassInfo _FFTImage = { "Image", "com.sponberg.fluid.layout", NULL, 0x0, 1, methods, 3, fields, 0, NULL};
  return &_FFTImage;
}

@end