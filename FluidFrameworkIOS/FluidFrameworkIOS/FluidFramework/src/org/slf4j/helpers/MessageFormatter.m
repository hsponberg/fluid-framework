//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src-external/org/slf4j/helpers/MessageFormatter.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "java/io/PrintStream.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/System.h"
#include "java/lang/Throwable.h"
#include "java/util/HashMap.h"
#include "java/util/Map.h"
#include "org/slf4j/helpers/FormattingTuple.h"
#include "org/slf4j/helpers/MessageFormatter.h"

@implementation OrgSlf4jHelpersMessageFormatter

NSString * OrgSlf4jHelpersMessageFormatter_DELIM_STR_ = @"{}";

+ (OrgSlf4jHelpersFormattingTuple *)formatWithNSString:(NSString *)messagePattern
                                                withId:(id)arg {
  return [OrgSlf4jHelpersMessageFormatter arrayFormatWithNSString:messagePattern withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ arg } count:1 type:[IOSClass classWithClass:[NSObject class]]]];
}

+ (OrgSlf4jHelpersFormattingTuple *)formatWithNSString:(NSString *)messagePattern
                                                withId:(id)arg1
                                                withId:(id)arg2 {
  return [OrgSlf4jHelpersMessageFormatter arrayFormatWithNSString:messagePattern withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ arg1, arg2 } count:2 type:[IOSClass classWithClass:[NSObject class]]]];
}

+ (JavaLangThrowable *)getThrowableCandidateWithNSObjectArray:(IOSObjectArray *)argArray {
  if (argArray == nil || (int) [argArray count] == 0) {
    return nil;
  }
  id lastEntry = IOSObjectArray_Get(argArray, (int) [((IOSObjectArray *) nil_chk(argArray)) count] - 1);
  if ([lastEntry isKindOfClass:[JavaLangThrowable class]]) {
    return (JavaLangThrowable *) check_class_cast(lastEntry, [JavaLangThrowable class]);
  }
  return nil;
}

+ (OrgSlf4jHelpersFormattingTuple *)arrayFormatWithNSString:(NSString *)messagePattern
                                          withNSObjectArray:(IOSObjectArray *)argArray {
  JavaLangThrowable *throwableCandidate = [OrgSlf4jHelpersMessageFormatter getThrowableCandidateWithNSObjectArray:argArray];
  if (messagePattern == nil) {
    return [[OrgSlf4jHelpersFormattingTuple alloc] initWithNSString:nil withNSObjectArray:argArray withJavaLangThrowable:throwableCandidate];
  }
  if (argArray == nil) {
    return [[OrgSlf4jHelpersFormattingTuple alloc] initWithNSString:messagePattern];
  }
  int i = 0;
  int j;
  JavaLangStringBuilder *sbuf = [[JavaLangStringBuilder alloc] initWithInt:((int) [((NSString *) nil_chk(messagePattern)) length]) + 50];
  int L;
  for (L = 0; L < (int) [((IOSObjectArray *) nil_chk(argArray)) count]; L++) {
    j = [messagePattern indexOfString:OrgSlf4jHelpersMessageFormatter_DELIM_STR_ fromIndex:i];
    if (j == -1) {
      if (i == 0) {
        return [[OrgSlf4jHelpersFormattingTuple alloc] initWithNSString:messagePattern withNSObjectArray:argArray withJavaLangThrowable:throwableCandidate];
      }
      else {
        (void) [sbuf appendWithNSString:[messagePattern substring:i endIndex:((int) [messagePattern length])]];
        return [[OrgSlf4jHelpersFormattingTuple alloc] initWithNSString:[sbuf description] withNSObjectArray:argArray withJavaLangThrowable:throwableCandidate];
      }
    }
    else {
      if ([OrgSlf4jHelpersMessageFormatter isEscapedDelimeterWithNSString:messagePattern withInt:j]) {
        if (![OrgSlf4jHelpersMessageFormatter isDoubleEscapedWithNSString:messagePattern withInt:j]) {
          L--;
          (void) [sbuf appendWithNSString:[messagePattern substring:i endIndex:j - 1]];
          (void) [sbuf appendWithChar:OrgSlf4jHelpersMessageFormatter_DELIM_START];
          i = j + 1;
        }
        else {
          (void) [sbuf appendWithNSString:[messagePattern substring:i endIndex:j - 1]];
          [OrgSlf4jHelpersMessageFormatter deeplyAppendParameterWithJavaLangStringBuilder:sbuf withId:IOSObjectArray_Get(argArray, L) withJavaUtilMap:[[JavaUtilHashMap alloc] init]];
          i = j + 2;
        }
      }
      else {
        (void) [sbuf appendWithNSString:[messagePattern substring:i endIndex:j]];
        [OrgSlf4jHelpersMessageFormatter deeplyAppendParameterWithJavaLangStringBuilder:sbuf withId:IOSObjectArray_Get(argArray, L) withJavaUtilMap:[[JavaUtilHashMap alloc] init]];
        i = j + 2;
      }
    }
  }
  (void) [sbuf appendWithNSString:[messagePattern substring:i endIndex:((int) [messagePattern length])]];
  if (L < (int) [argArray count] - 1) {
    return [[OrgSlf4jHelpersFormattingTuple alloc] initWithNSString:[sbuf description] withNSObjectArray:argArray withJavaLangThrowable:throwableCandidate];
  }
  else {
    return [[OrgSlf4jHelpersFormattingTuple alloc] initWithNSString:[sbuf description] withNSObjectArray:argArray withJavaLangThrowable:nil];
  }
}

+ (BOOL)isEscapedDelimeterWithNSString:(NSString *)messagePattern
                               withInt:(int)delimeterStartIndex {
  if (delimeterStartIndex == 0) {
    return NO;
  }
  unichar potentialEscape = [((NSString *) nil_chk(messagePattern)) charAtWithInt:delimeterStartIndex - 1];
  if (potentialEscape == OrgSlf4jHelpersMessageFormatter_ESCAPE_CHAR) {
    return YES;
  }
  else {
    return NO;
  }
}

+ (BOOL)isDoubleEscapedWithNSString:(NSString *)messagePattern
                            withInt:(int)delimeterStartIndex {
  if (delimeterStartIndex >= 2 && [((NSString *) nil_chk(messagePattern)) charAtWithInt:delimeterStartIndex - 2] == OrgSlf4jHelpersMessageFormatter_ESCAPE_CHAR) {
    return YES;
  }
  else {
    return NO;
  }
}

+ (void)deeplyAppendParameterWithJavaLangStringBuilder:(JavaLangStringBuilder *)sbuf
                                                withId:(id)o
                                       withJavaUtilMap:(id<JavaUtilMap>)seenMap {
  if (o == nil) {
    (void) [((JavaLangStringBuilder *) nil_chk(sbuf)) appendWithNSString:@"null"];
    return;
  }
  if (![[nil_chk(o) getClass] isArray]) {
    [OrgSlf4jHelpersMessageFormatter safeObjectAppendWithJavaLangStringBuilder:sbuf withId:o];
  }
  else {
    if ([o isKindOfClass:[IOSBooleanArray class]]) {
      [OrgSlf4jHelpersMessageFormatter booleanArrayAppendWithJavaLangStringBuilder:sbuf withBooleanArray:(IOSBooleanArray *) check_class_cast(o, [IOSBooleanArray class])];
    }
    else if ([o isKindOfClass:[IOSByteArray class]]) {
      [OrgSlf4jHelpersMessageFormatter byteArrayAppendWithJavaLangStringBuilder:sbuf withByteArray:(IOSByteArray *) check_class_cast(o, [IOSByteArray class])];
    }
    else if ([o isKindOfClass:[IOSCharArray class]]) {
      [OrgSlf4jHelpersMessageFormatter charArrayAppendWithJavaLangStringBuilder:sbuf withCharArray:(IOSCharArray *) check_class_cast(o, [IOSCharArray class])];
    }
    else if ([o isKindOfClass:[IOSShortArray class]]) {
      [OrgSlf4jHelpersMessageFormatter shortArrayAppendWithJavaLangStringBuilder:sbuf withShortArray:(IOSShortArray *) check_class_cast(o, [IOSShortArray class])];
    }
    else if ([o isKindOfClass:[IOSIntArray class]]) {
      [OrgSlf4jHelpersMessageFormatter intArrayAppendWithJavaLangStringBuilder:sbuf withIntArray:(IOSIntArray *) check_class_cast(o, [IOSIntArray class])];
    }
    else if ([o isKindOfClass:[IOSLongArray class]]) {
      [OrgSlf4jHelpersMessageFormatter longArrayAppendWithJavaLangStringBuilder:sbuf withLongArray:(IOSLongArray *) check_class_cast(o, [IOSLongArray class])];
    }
    else if ([o isKindOfClass:[IOSFloatArray class]]) {
      [OrgSlf4jHelpersMessageFormatter floatArrayAppendWithJavaLangStringBuilder:sbuf withFloatArray:(IOSFloatArray *) check_class_cast(o, [IOSFloatArray class])];
    }
    else if ([o isKindOfClass:[IOSDoubleArray class]]) {
      [OrgSlf4jHelpersMessageFormatter doubleArrayAppendWithJavaLangStringBuilder:sbuf withDoubleArray:(IOSDoubleArray *) check_class_cast(o, [IOSDoubleArray class])];
    }
    else {
      [OrgSlf4jHelpersMessageFormatter objectArrayAppendWithJavaLangStringBuilder:sbuf withNSObjectArray:(IOSObjectArray *) check_class_cast(o, [IOSObjectArray class]) withJavaUtilMap:seenMap];
    }
  }
}

+ (void)safeObjectAppendWithJavaLangStringBuilder:(JavaLangStringBuilder *)sbuf
                                           withId:(id)o {
  @try {
    NSString *oAsString = [nil_chk(o) description];
    (void) [((JavaLangStringBuilder *) nil_chk(sbuf)) appendWithNSString:oAsString];
  }
  @catch (JavaLangThrowable *t) {
    [((JavaIoPrintStream *) nil_chk(JavaLangSystem_get_err_())) printlnWithNSString:[NSString stringWithFormat:@"SLF4J: Failed toString() invocation on an object of type [%@]", [[nil_chk(o) getClass] getName]]];
    [((JavaLangThrowable *) nil_chk(t)) printStackTrace];
    (void) [((JavaLangStringBuilder *) nil_chk(sbuf)) appendWithNSString:@"[FAILED toString()]"];
  }
}

+ (void)objectArrayAppendWithJavaLangStringBuilder:(JavaLangStringBuilder *)sbuf
                                 withNSObjectArray:(IOSObjectArray *)a
                                   withJavaUtilMap:(id<JavaUtilMap>)seenMap {
  (void) [((JavaLangStringBuilder *) nil_chk(sbuf)) appendWithChar:'['];
  if (![((id<JavaUtilMap>) nil_chk(seenMap)) containsKeyWithId:a]) {
    (void) [seenMap putWithId:a withId:nil];
    int len = (int) [((IOSObjectArray *) nil_chk(a)) count];
    for (int i = 0; i < len; i++) {
      [OrgSlf4jHelpersMessageFormatter deeplyAppendParameterWithJavaLangStringBuilder:sbuf withId:IOSObjectArray_Get(a, i) withJavaUtilMap:seenMap];
      if (i != len - 1) (void) [sbuf appendWithNSString:@", "];
    }
    (void) [seenMap removeWithId:a];
  }
  else {
    (void) [sbuf appendWithNSString:@"..."];
  }
  (void) [sbuf appendWithChar:']'];
}

+ (void)booleanArrayAppendWithJavaLangStringBuilder:(JavaLangStringBuilder *)sbuf
                                   withBooleanArray:(IOSBooleanArray *)a {
  (void) [((JavaLangStringBuilder *) nil_chk(sbuf)) appendWithChar:'['];
  int len = (int) [((IOSBooleanArray *) nil_chk(a)) count];
  for (int i = 0; i < len; i++) {
    (void) [sbuf appendWithBoolean:IOSBooleanArray_Get(a, i)];
    if (i != len - 1) (void) [sbuf appendWithNSString:@", "];
  }
  (void) [sbuf appendWithChar:']'];
}

+ (void)byteArrayAppendWithJavaLangStringBuilder:(JavaLangStringBuilder *)sbuf
                                   withByteArray:(IOSByteArray *)a {
  (void) [((JavaLangStringBuilder *) nil_chk(sbuf)) appendWithChar:'['];
  int len = (int) [((IOSByteArray *) nil_chk(a)) count];
  for (int i = 0; i < len; i++) {
    (void) [sbuf appendWithInt:IOSByteArray_Get(a, i)];
    if (i != len - 1) (void) [sbuf appendWithNSString:@", "];
  }
  (void) [sbuf appendWithChar:']'];
}

+ (void)charArrayAppendWithJavaLangStringBuilder:(JavaLangStringBuilder *)sbuf
                                   withCharArray:(IOSCharArray *)a {
  (void) [((JavaLangStringBuilder *) nil_chk(sbuf)) appendWithChar:'['];
  int len = (int) [((IOSCharArray *) nil_chk(a)) count];
  for (int i = 0; i < len; i++) {
    (void) [sbuf appendWithChar:IOSCharArray_Get(a, i)];
    if (i != len - 1) (void) [sbuf appendWithNSString:@", "];
  }
  (void) [sbuf appendWithChar:']'];
}

+ (void)shortArrayAppendWithJavaLangStringBuilder:(JavaLangStringBuilder *)sbuf
                                   withShortArray:(IOSShortArray *)a {
  (void) [((JavaLangStringBuilder *) nil_chk(sbuf)) appendWithChar:'['];
  int len = (int) [((IOSShortArray *) nil_chk(a)) count];
  for (int i = 0; i < len; i++) {
    (void) [sbuf appendWithInt:IOSShortArray_Get(a, i)];
    if (i != len - 1) (void) [sbuf appendWithNSString:@", "];
  }
  (void) [sbuf appendWithChar:']'];
}

+ (void)intArrayAppendWithJavaLangStringBuilder:(JavaLangStringBuilder *)sbuf
                                   withIntArray:(IOSIntArray *)a {
  (void) [((JavaLangStringBuilder *) nil_chk(sbuf)) appendWithChar:'['];
  int len = (int) [((IOSIntArray *) nil_chk(a)) count];
  for (int i = 0; i < len; i++) {
    (void) [sbuf appendWithInt:IOSIntArray_Get(a, i)];
    if (i != len - 1) (void) [sbuf appendWithNSString:@", "];
  }
  (void) [sbuf appendWithChar:']'];
}

+ (void)longArrayAppendWithJavaLangStringBuilder:(JavaLangStringBuilder *)sbuf
                                   withLongArray:(IOSLongArray *)a {
  (void) [((JavaLangStringBuilder *) nil_chk(sbuf)) appendWithChar:'['];
  int len = (int) [((IOSLongArray *) nil_chk(a)) count];
  for (int i = 0; i < len; i++) {
    (void) [sbuf appendWithLong:IOSLongArray_Get(a, i)];
    if (i != len - 1) (void) [sbuf appendWithNSString:@", "];
  }
  (void) [sbuf appendWithChar:']'];
}

+ (void)floatArrayAppendWithJavaLangStringBuilder:(JavaLangStringBuilder *)sbuf
                                   withFloatArray:(IOSFloatArray *)a {
  (void) [((JavaLangStringBuilder *) nil_chk(sbuf)) appendWithChar:'['];
  int len = (int) [((IOSFloatArray *) nil_chk(a)) count];
  for (int i = 0; i < len; i++) {
    (void) [sbuf appendWithFloat:IOSFloatArray_Get(a, i)];
    if (i != len - 1) (void) [sbuf appendWithNSString:@", "];
  }
  (void) [sbuf appendWithChar:']'];
}

+ (void)doubleArrayAppendWithJavaLangStringBuilder:(JavaLangStringBuilder *)sbuf
                                   withDoubleArray:(IOSDoubleArray *)a {
  (void) [((JavaLangStringBuilder *) nil_chk(sbuf)) appendWithChar:'['];
  int len = (int) [((IOSDoubleArray *) nil_chk(a)) count];
  for (int i = 0; i < len; i++) {
    (void) [sbuf appendWithDouble:IOSDoubleArray_Get(a, i)];
    if (i != len - 1) (void) [sbuf appendWithNSString:@", "];
  }
  (void) [sbuf appendWithChar:']'];
}

- (id)init {
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "formatWithNSString:withId:", "format", "Lorg.slf4j.helpers.FormattingTuple;", 0x19, NULL },
    { "formatWithNSString:withId:withId:", "format", "Lorg.slf4j.helpers.FormattingTuple;", 0x19, NULL },
    { "getThrowableCandidateWithNSObjectArray:", "getThrowableCandidate", "Ljava.lang.Throwable;", 0x18, NULL },
    { "arrayFormatWithNSString:withNSObjectArray:", "arrayFormat", "Lorg.slf4j.helpers.FormattingTuple;", 0x19, NULL },
    { "isEscapedDelimeterWithNSString:withInt:", "isEscapedDelimeter", "Z", 0x18, NULL },
    { "isDoubleEscapedWithNSString:withInt:", "isDoubleEscaped", "Z", 0x18, NULL },
    { "deeplyAppendParameterWithJavaLangStringBuilder:withId:withJavaUtilMap:", "deeplyAppendParameter", "V", 0xa, NULL },
    { "safeObjectAppendWithJavaLangStringBuilder:withId:", "safeObjectAppend", "V", 0xa, NULL },
    { "objectArrayAppendWithJavaLangStringBuilder:withNSObjectArray:withJavaUtilMap:", "objectArrayAppend", "V", 0xa, NULL },
    { "booleanArrayAppendWithJavaLangStringBuilder:withBooleanArray:", "booleanArrayAppend", "V", 0xa, NULL },
    { "byteArrayAppendWithJavaLangStringBuilder:withByteArray:", "byteArrayAppend", "V", 0xa, NULL },
    { "charArrayAppendWithJavaLangStringBuilder:withCharArray:", "charArrayAppend", "V", 0xa, NULL },
    { "shortArrayAppendWithJavaLangStringBuilder:withShortArray:", "shortArrayAppend", "V", 0xa, NULL },
    { "intArrayAppendWithJavaLangStringBuilder:withIntArray:", "intArrayAppend", "V", 0xa, NULL },
    { "longArrayAppendWithJavaLangStringBuilder:withLongArray:", "longArrayAppend", "V", 0xa, NULL },
    { "floatArrayAppendWithJavaLangStringBuilder:withFloatArray:", "floatArrayAppend", "V", 0xa, NULL },
    { "doubleArrayAppendWithJavaLangStringBuilder:withDoubleArray:", "doubleArrayAppend", "V", 0xa, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "DELIM_START_", NULL, 0x18, "C", NULL, .constantValue.asUnichar = OrgSlf4jHelpersMessageFormatter_DELIM_START },
    { "DELIM_STOP_", NULL, 0x18, "C", NULL, .constantValue.asUnichar = OrgSlf4jHelpersMessageFormatter_DELIM_STOP },
    { "DELIM_STR_", NULL, 0x18, "Ljava.lang.String;", &OrgSlf4jHelpersMessageFormatter_DELIM_STR_,  },
    { "ESCAPE_CHAR_", NULL, 0x1a, "C", NULL, .constantValue.asUnichar = OrgSlf4jHelpersMessageFormatter_ESCAPE_CHAR },
  };
  static J2ObjcClassInfo _OrgSlf4jHelpersMessageFormatter = { "MessageFormatter", "org.slf4j.helpers", NULL, 0x11, 18, methods, 4, fields, 0, NULL};
  return &_OrgSlf4jHelpersMessageFormatter;
}

@end
