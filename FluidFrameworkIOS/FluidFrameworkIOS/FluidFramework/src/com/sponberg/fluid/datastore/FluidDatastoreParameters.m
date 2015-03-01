//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src-delomboked/com/sponberg/fluid/datastore/FluidDatastoreParameters.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "com/sponberg/fluid/FluidApp.h"
#include "com/sponberg/fluid/GlobalState.h"
#include "com/sponberg/fluid/SecurityService.h"
#include "com/sponberg/fluid/datastore/DatastoreException.h"
#include "com/sponberg/fluid/datastore/DatastoreService.h"
#include "com/sponberg/fluid/datastore/FluidDatastoreParameters.h"
#include "com/sponberg/fluid/datastore/SQLQuery.h"
#include "com/sponberg/fluid/datastore/SQLQueryDefault.h"
#include "com/sponberg/fluid/datastore/SQLQueryResultDefault.h"
#include "com/sponberg/fluid/datastore/SQLResultList.h"
#include "com/sponberg/fluid/datastore/SQLWhereClause.h"
#include "com/sponberg/fluid/util/HmacUtil.h"
#include "java/lang/Integer.h"

@implementation FFTFluidDatastoreParameters

NSString * FFTFluidDatastoreParameters_kDsVersion_ = @"dsVersion";
NSString * FFTFluidDatastoreParameters_kFluidParameterTable_ = @"__fluid_ptable";
NSString * FFTFluidDatastoreParameters_kParameterKey_ = @"key";
NSString * FFTFluidDatastoreParameters_kParameterValue_ = @"value";
NSString * FFTFluidDatastoreParameters_kParameterRowHash_ = @"rh";

+ (void)setValueWithNSString:(NSString *)key
                withNSString:(NSString *)value {
  int rowHash = [FFTFluidDatastoreParameters getRowHashWithNSString:key withNSString:value];
  id<FFTDatastoreService> ds = [((FFTFluidApp *) nil_chk(FFTGlobalState_get_fluidApp__())) getDatastoreService];
  NSString *statement = [NSString stringWithFormat:@"insert into __fluid_ptable (key,value,rh) values ('%@', '%@', '%d');", key, value, rowHash];
  [((id<FFTDatastoreService>) nil_chk(ds)) executeRawStatementWithNSString:statement];
}

+ (int)getRowHashWithNSString:(NSString *)key
                 withNSString:(NSString *)value {
  id<FFTSecurityService> ss = [((FFTFluidApp *) nil_chk(FFTGlobalState_get_fluidApp__())) getSecurityService];
  id<FFTSecurityService_PasswordProvider> pp = [((id<FFTSecurityService>) nil_chk(ss)) getPasswordProvider];
  JavaLangInteger *rowHash = [FFTHmacUtil hmacHashcodeWithNSString:[NSString stringWithFormat:@"%@%@", key, value] withNSString:[NSString stringWithFormat:@"%@%@", [((id<FFTSecurityService_PasswordProvider>) nil_chk(pp)) getHmacKeyFluidDatastoreParameters], [@"a1a2a3a4" replace:@"1" withSequence:@"$"]] withNSString:[ss getUserSalt]];
  if (rowHash == nil) {
    @throw [[FFTDatastoreException alloc] initWithNSString:@"Row hash null"];
  }
  return [((JavaLangInteger *) nil_chk(rowHash)) intValue];
}

+ (NSString *)getValueWithNSString:(NSString *)key {
  return [FFTFluidDatastoreParameters getValueWithNSString:key withBoolean:NO];
}

+ (NSString *)getValueWithNSString:(NSString *)key
                       withBoolean:(BOOL)ignoreHashMismatch {
  id<FFTDatastoreService> ds = [((FFTFluidApp *) nil_chk(FFTGlobalState_get_fluidApp__())) getDatastoreService];
  FFTSQLQuery *query = [[FFTSQLQueryDefault alloc] initWithNSString:FFTFluidDatastoreParameters_kFluidParameterTable_ withNSStringArray:[IOSObjectArray arrayWithObjects:(id[]){ FFTFluidDatastoreParameters_kParameterValue_, FFTFluidDatastoreParameters_kParameterRowHash_ } count:2 type:[IOSClass classWithClass:[NSString class]]]];
  [query setWhereWithNSString:@"{} = ?"];
  [((FFTSQLWhereClause *) nil_chk([query getWhere])) addStringParameterWithNSString:FFTFluidDatastoreParameters_kParameterKey_ withNSString:key];
  FFTSQLResultList *list = [((id<FFTDatastoreService>) nil_chk(ds)) queryWithFFTSQLQuery:query];
  if (![((FFTSQLResultList *) nil_chk(list)) hasNext]) {
    return nil;
  }
  FFTSQLQueryResultDefault *result = [list next];
  NSString *value = [((FFTSQLQueryResultDefault *) nil_chk(result)) getStringWithNSString:FFTFluidDatastoreParameters_kParameterValue_];
  JavaLangInteger *rowHash = [result getIntegerWithNSString:FFTFluidDatastoreParameters_kParameterRowHash_];
  if (rowHash == nil) {
    @throw [[FFTDatastoreException alloc] initWithNSString:@"No row hash"];
  }
  int calculatedRowHash = [FFTFluidDatastoreParameters getRowHashWithNSString:key withNSString:value];
  if ([((JavaLangInteger *) nil_chk(rowHash)) intValue] != calculatedRowHash && !ignoreHashMismatch) {
    @throw [[FFTDatastoreException alloc] initWithNSString:@"Row hash mismatch"];
  }
  return value;
}

- (id)init {
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "setValueWithNSString:withNSString:", "setValue", "V", 0x9, "Lcom.sponberg.fluid.datastore.DatastoreException;" },
    { "getRowHashWithNSString:withNSString:", "getRowHash", "I", 0xa, NULL },
    { "getValueWithNSString:", "getValue", "Ljava.lang.String;", 0x9, "Lcom.sponberg.fluid.datastore.DatastoreException;" },
    { "getValueWithNSString:withBoolean:", "getValue", "Ljava.lang.String;", 0x9, "Lcom.sponberg.fluid.datastore.DatastoreException;" },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "kDsVersion_", NULL, 0x19, "Ljava.lang.String;", &FFTFluidDatastoreParameters_kDsVersion_,  },
    { "kFluidParameterTable_", NULL, 0x18, "Ljava.lang.String;", &FFTFluidDatastoreParameters_kFluidParameterTable_,  },
    { "kParameterKey_", NULL, 0x18, "Ljava.lang.String;", &FFTFluidDatastoreParameters_kParameterKey_,  },
    { "kParameterValue_", NULL, 0x18, "Ljava.lang.String;", &FFTFluidDatastoreParameters_kParameterValue_,  },
    { "kParameterRowHash_", NULL, 0x18, "Ljava.lang.String;", &FFTFluidDatastoreParameters_kParameterRowHash_,  },
  };
  static J2ObjcClassInfo _FFTFluidDatastoreParameters = { "FluidDatastoreParameters", "com.sponberg.fluid.datastore", NULL, 0x1, 5, methods, 5, fields, 0, NULL};
  return &_FFTFluidDatastoreParameters;
}

@end