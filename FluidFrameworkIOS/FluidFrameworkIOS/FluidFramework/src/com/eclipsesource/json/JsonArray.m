//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src-external/com/eclipsesource/json/JsonArray.java
//

#include "IOSClass.h"
#include "com/eclipsesource/json/JsonArray.h"
#include "com/eclipsesource/json/JsonValue.h"
#include "com/eclipsesource/json/JsonWriter.h"
#include "java/io/IOException.h"
#include "java/io/Reader.h"
#include "java/lang/NullPointerException.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/util/ArrayList.h"
#include "java/util/Collections.h"
#include "java/util/Iterator.h"
#include "java/util/List.h"

@implementation FFTJsonArray

- (id)init {
  if (self = [super init]) {
    values__ = [[JavaUtilArrayList alloc] init];
  }
  return self;
}

- (id)initWithFFTJsonArray:(FFTJsonArray *)array {
  return [self initFFTJsonArrayWithFFTJsonArray:array withBoolean:NO];
}

- (id)initFFTJsonArrayWithFFTJsonArray:(FFTJsonArray *)array
                           withBoolean:(BOOL)unmodifiable {
  if (self = [super init]) {
    if (array == nil) {
      @throw [[JavaLangNullPointerException alloc] initWithNSString:@"array is null"];
    }
    if (unmodifiable) {
      values__ = [JavaUtilCollections unmodifiableListWithJavaUtilList:((FFTJsonArray *) nil_chk(array))->values__];
    }
    else {
      values__ = [[JavaUtilArrayList alloc] initWithJavaUtilCollection:((FFTJsonArray *) nil_chk(array))->values__];
    }
  }
  return self;
}

- (id)initWithFFTJsonArray:(FFTJsonArray *)array
               withBoolean:(BOOL)unmodifiable {
  return [self initFFTJsonArrayWithFFTJsonArray:array withBoolean:unmodifiable];
}

+ (FFTJsonArray *)readFromWithJavaIoReader:(JavaIoReader *)reader {
  return [((FFTJsonValue *) nil_chk([FFTJsonValue readFromWithJavaIoReader:reader])) asArray];
}

+ (FFTJsonArray *)readFromWithNSString:(NSString *)string {
  return [((FFTJsonValue *) nil_chk([FFTJsonValue readFromWithNSString:string])) asArray];
}

+ (FFTJsonArray *)unmodifiableArrayWithFFTJsonArray:(FFTJsonArray *)array {
  return [[FFTJsonArray alloc] initWithFFTJsonArray:array withBoolean:YES];
}

- (FFTJsonArray *)addWithInt:(int)value {
  [((id<JavaUtilList>) nil_chk(values__)) addWithId:[FFTJsonValue valueOfWithInt:value]];
  return self;
}

- (FFTJsonArray *)addWithLong:(long long int)value {
  [((id<JavaUtilList>) nil_chk(values__)) addWithId:[FFTJsonValue valueOfWithLong:value]];
  return self;
}

- (FFTJsonArray *)addWithFloat:(float)value {
  [((id<JavaUtilList>) nil_chk(values__)) addWithId:[FFTJsonValue valueOfWithFloat:value]];
  return self;
}

- (FFTJsonArray *)addWithDouble:(double)value {
  [((id<JavaUtilList>) nil_chk(values__)) addWithId:[FFTJsonValue valueOfWithDouble:value]];
  return self;
}

- (FFTJsonArray *)addWithBoolean:(BOOL)value {
  [((id<JavaUtilList>) nil_chk(values__)) addWithId:[FFTJsonValue valueOfWithBoolean:value]];
  return self;
}

- (FFTJsonArray *)addWithNSString:(NSString *)value {
  [((id<JavaUtilList>) nil_chk(values__)) addWithId:[FFTJsonValue valueOfWithNSString:value]];
  return self;
}

- (FFTJsonArray *)addWithFFTJsonValue:(FFTJsonValue *)value {
  if (value == nil) {
    @throw [[JavaLangNullPointerException alloc] initWithNSString:@"value is null"];
  }
  [((id<JavaUtilList>) nil_chk(values__)) addWithId:value];
  return self;
}

- (FFTJsonArray *)setWithInt:(int)index
                     withInt:(int)value {
  (void) [((id<JavaUtilList>) nil_chk(values__)) setWithInt:index withId:[FFTJsonValue valueOfWithInt:value]];
  return self;
}

- (FFTJsonArray *)setWithInt:(int)index
                    withLong:(long long int)value {
  (void) [((id<JavaUtilList>) nil_chk(values__)) setWithInt:index withId:[FFTJsonValue valueOfWithLong:value]];
  return self;
}

- (FFTJsonArray *)setWithInt:(int)index
                   withFloat:(float)value {
  (void) [((id<JavaUtilList>) nil_chk(values__)) setWithInt:index withId:[FFTJsonValue valueOfWithFloat:value]];
  return self;
}

- (FFTJsonArray *)setWithInt:(int)index
                  withDouble:(double)value {
  (void) [((id<JavaUtilList>) nil_chk(values__)) setWithInt:index withId:[FFTJsonValue valueOfWithDouble:value]];
  return self;
}

- (FFTJsonArray *)setWithInt:(int)index
                 withBoolean:(BOOL)value {
  (void) [((id<JavaUtilList>) nil_chk(values__)) setWithInt:index withId:[FFTJsonValue valueOfWithBoolean:value]];
  return self;
}

- (FFTJsonArray *)setWithInt:(int)index
                withNSString:(NSString *)value {
  (void) [((id<JavaUtilList>) nil_chk(values__)) setWithInt:index withId:[FFTJsonValue valueOfWithNSString:value]];
  return self;
}

- (FFTJsonArray *)setWithInt:(int)index
            withFFTJsonValue:(FFTJsonValue *)value {
  if (value == nil) {
    @throw [[JavaLangNullPointerException alloc] initWithNSString:@"value is null"];
  }
  (void) [((id<JavaUtilList>) nil_chk(values__)) setWithInt:index withId:value];
  return self;
}

- (FFTJsonArray *)removeWithInt:(int)index {
  (void) [((id<JavaUtilList>) nil_chk(values__)) removeWithInt:index];
  return self;
}

- (int)size {
  return [((id<JavaUtilList>) nil_chk(values__)) size];
}

- (BOOL)isEmpty {
  return [((id<JavaUtilList>) nil_chk(values__)) isEmpty];
}

- (FFTJsonValue *)getWithInt:(int)index {
  return [((id<JavaUtilList>) nil_chk(values__)) getWithInt:index];
}

- (id<JavaUtilList>)values {
  return [JavaUtilCollections unmodifiableListWithJavaUtilList:values__];
}

- (id<JavaUtilIterator>)iterator {
  id<JavaUtilIterator> iterator = [((id<JavaUtilList>) nil_chk(values__)) iterator];
  return [[FFTJsonArray_$1 alloc] initWithJavaUtilIterator:iterator];
}

- (void)writeWithFFTJsonWriter:(FFTJsonWriter *)writer {
  [((FFTJsonWriter *) nil_chk(writer)) writeArrayWithFFTJsonArray:self];
}

- (BOOL)isArray {
  return YES;
}

- (FFTJsonArray *)asArray {
  return self;
}

- (NSUInteger)hash {
  return ((int) [((id<JavaUtilList>) nil_chk(values__)) hash]);
}

- (BOOL)isEqual:(id)object {
  if (self == object) {
    return YES;
  }
  if (object == nil) {
    return NO;
  }
  if ([self getClass] != [nil_chk(object) getClass]) {
    return NO;
  }
  FFTJsonArray *other = (FFTJsonArray *) check_class_cast(object, [FFTJsonArray class]);
  return [((id<JavaUtilList>) nil_chk(values__)) isEqual:other->values__];
}

- (void)copyAllFieldsTo:(FFTJsonArray *)other {
  [super copyAllFieldsTo:other];
  other->values__ = values__;
}
- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}


+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "init", "JsonArray", NULL, 0x1, NULL },
    { "initWithFFTJsonArray:", "JsonArray", NULL, 0x1, NULL },
    { "initWithFFTJsonArray:withBoolean:", "JsonArray", NULL, 0x2, NULL },
    { "readFromWithJavaIoReader:", "readFrom", "Lcom.eclipsesource.json.JsonArray;", 0x9, "Ljava.io.IOException;" },
    { "readFromWithNSString:", "readFrom", "Lcom.eclipsesource.json.JsonArray;", 0x9, NULL },
    { "unmodifiableArrayWithFFTJsonArray:", "unmodifiableArray", "Lcom.eclipsesource.json.JsonArray;", 0x9, NULL },
    { "addWithInt:", "add", "Lcom.eclipsesource.json.JsonArray;", 0x1, NULL },
    { "addWithLong:", "add", "Lcom.eclipsesource.json.JsonArray;", 0x1, NULL },
    { "addWithFloat:", "add", "Lcom.eclipsesource.json.JsonArray;", 0x1, NULL },
    { "addWithDouble:", "add", "Lcom.eclipsesource.json.JsonArray;", 0x1, NULL },
    { "addWithBoolean:", "add", "Lcom.eclipsesource.json.JsonArray;", 0x1, NULL },
    { "addWithNSString:", "add", "Lcom.eclipsesource.json.JsonArray;", 0x1, NULL },
    { "addWithFFTJsonValue:", "add", "Lcom.eclipsesource.json.JsonArray;", 0x1, NULL },
    { "setWithInt:withInt:", "set", "Lcom.eclipsesource.json.JsonArray;", 0x1, NULL },
    { "setWithInt:withLong:", "set", "Lcom.eclipsesource.json.JsonArray;", 0x1, NULL },
    { "setWithInt:withFloat:", "set", "Lcom.eclipsesource.json.JsonArray;", 0x1, NULL },
    { "setWithInt:withDouble:", "set", "Lcom.eclipsesource.json.JsonArray;", 0x1, NULL },
    { "setWithInt:withBoolean:", "set", "Lcom.eclipsesource.json.JsonArray;", 0x1, NULL },
    { "setWithInt:withNSString:", "set", "Lcom.eclipsesource.json.JsonArray;", 0x1, NULL },
    { "setWithInt:withFFTJsonValue:", "set", "Lcom.eclipsesource.json.JsonArray;", 0x1, NULL },
    { "removeWithInt:", "remove", "Lcom.eclipsesource.json.JsonArray;", 0x1, NULL },
    { "size", NULL, "I", 0x1, NULL },
    { "isEmpty", NULL, "Z", 0x1, NULL },
    { "getWithInt:", "get", "Lcom.eclipsesource.json.JsonValue;", 0x1, NULL },
    { "values", NULL, "Ljava.util.List;", 0x1, NULL },
    { "iterator", NULL, "Ljava.util.Iterator;", 0x1, NULL },
    { "writeWithFFTJsonWriter:", "write", "V", 0x4, "Ljava.io.IOException;" },
    { "isArray", NULL, "Z", 0x1, NULL },
    { "asArray", NULL, "Lcom.eclipsesource.json.JsonArray;", 0x1, NULL },
    { "hash", "hashCode", "I", 0x1, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "values__", "values", 0x12, "Ljava.util.List;", NULL,  },
  };
  static J2ObjcClassInfo _FFTJsonArray = { "JsonArray", "com.eclipsesource.json", NULL, 0x1, 31, methods, 1, fields, 0, NULL};
  return &_FFTJsonArray;
}

@end

@implementation FFTJsonArray_$1

- (BOOL)hasNext {
  return [((id<JavaUtilIterator>) nil_chk(val$iterator_)) hasNext];
}

- (FFTJsonValue *)next {
  return [((id<JavaUtilIterator>) nil_chk(val$iterator_)) next];
}

- (void)remove {
  @throw [[JavaLangUnsupportedOperationException alloc] init];
}

- (id)initWithJavaUtilIterator:(id<JavaUtilIterator>)capture$0 {
  val$iterator_ = capture$0;
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "hasNext", NULL, "Z", 0x1, NULL },
    { "next", NULL, "Lcom.eclipsesource.json.JsonValue;", 0x1, NULL },
    { "remove", NULL, "V", 0x1, NULL },
    { "initWithJavaUtilIterator:", "init", NULL, 0x0, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "val$iterator_", NULL, 0x1012, "Ljava.util.Iterator;", NULL,  },
  };
  static J2ObjcClassInfo _FFTJsonArray_$1 = { "$1", "com.eclipsesource.json", "JsonArray", 0x8000, 4, methods, 1, fields, 0, NULL};
  return &_FFTJsonArray_$1;
}

@end