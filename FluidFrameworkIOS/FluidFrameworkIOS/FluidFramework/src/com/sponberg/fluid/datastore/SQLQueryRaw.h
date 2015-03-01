//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src-delomboked/com/sponberg/fluid/datastore/SQLQueryRaw.java
//

#ifndef _FFTSQLQueryRaw_H_
#define _FFTSQLQueryRaw_H_

@class FFTSQLParameterizedStatement;
@class FFTSQLWhereClause;
@class IOSClass;

#import "JreEmulation.h"
#include "com/sponberg/fluid/datastore/SQLQueryDefault.h"

@interface FFTSQLQueryRaw : FFTSQLQueryDefault {
 @public
  IOSClass *queryResultClass_SQLQueryRaw_;
  NSString *rawSqlCommand_;
}

- (id)initWithNSString:(NSString *)rawSqlCommand;

- (void)setWhereWithNSString:(NSString *)where;

- (FFTSQLWhereClause *)getWhere;

- (void)setSelectStatementWithNSString:(NSString *)selectStatement;

- (FFTSQLParameterizedStatement *)getParameterizedStatement;

- (NSString *)description;

- (void)copyAllFieldsTo:(FFTSQLQueryRaw *)other;

@end

__attribute__((always_inline)) inline void FFTSQLQueryRaw_init() {}

J2OBJC_FIELD_SETTER(FFTSQLQueryRaw, queryResultClass_SQLQueryRaw_, IOSClass *)
J2OBJC_FIELD_SETTER(FFTSQLQueryRaw, rawSqlCommand_, NSString *)

typedef FFTSQLQueryRaw ComSponbergFluidDatastoreSQLQueryRaw;

#endif // _FFTSQLQueryRaw_H_