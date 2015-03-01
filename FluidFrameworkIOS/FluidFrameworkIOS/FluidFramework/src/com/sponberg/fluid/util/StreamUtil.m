//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src-delomboked/com/sponberg/fluid/util/StreamUtil.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "com/sponberg/fluid/util/StreamUtil.h"
#include "java/io/ByteArrayOutputStream.h"
#include "java/io/FileInputStream.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/io/OutputStream.h"

@implementation FFTStreamUtil

+ (NSString *)fileToStringWithNSString:(NSString *)file {
  JavaIoByteArrayOutputStream *out = [[JavaIoByteArrayOutputStream alloc] init];
  [FFTStreamUtil copyInputStreamWithJavaIoInputStream:[[JavaIoFileInputStream alloc] initWithNSString:file] withJavaIoOutputStream:out];
  return [NSString stringWithBytes:[out toByteArray]];
}

+ (void)copyInputStreamWithJavaIoInputStream:(JavaIoInputStream *)inArg
                      withJavaIoOutputStream:(JavaIoOutputStream *)outArg {
  IOSByteArray *buffer = [IOSByteArray arrayWithLength:1024];
  int len;
  while ((len = [((JavaIoInputStream *) nil_chk(inArg)) readWithByteArray:buffer]) != -1) {
    [((JavaIoOutputStream *) nil_chk(outArg)) writeWithByteArray:buffer withInt:0 withInt:len];
  }
  [inArg close];
  [((JavaIoOutputStream *) nil_chk(outArg)) close];
}

- (id)init {
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "fileToStringWithNSString:", "fileToString", "Ljava.lang.String;", 0x19, "Ljava.io.IOException;" },
    { "copyInputStreamWithJavaIoInputStream:withJavaIoOutputStream:", "copyInputStream", "V", 0x19, "Ljava.io.IOException;" },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static J2ObjcClassInfo _FFTStreamUtil = { "StreamUtil", "com.sponberg.fluid.util", NULL, 0x1, 3, methods, 0, NULL, 0, NULL};
  return &_FFTStreamUtil;
}

@end