//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src-delomboked/com/sponberg/app/datastore/postcodes/DSSuburb.java
//

#ifndef _ComSponbergAppDatastorePostcodesDSSuburb_H_
#define _ComSponbergAppDatastorePostcodesDSSuburb_H_

@class JavaLangInteger;

#import "JreEmulation.h"
#include "com/sponberg/fluid/datastore/DSBase.h"
#include "com/sponberg/fluid/datastore/SQLTable.h"

@interface ComSponbergAppDatastorePostcodesDSSuburb : FFTDSBase < FFTSQLTable > {
}

- (void)setIdWithJavaLangInteger:(JavaLangInteger *)id_;

- (JavaLangInteger *)getId;

- (void)setCodeWithNSString:(NSString *)code;

- (NSString *)getCode;

- (void)setTitleWithNSString:(NSString *)title;

- (NSString *)getTitle;

- (NSString *)_getTableName;

- (id)init;

@end

__attribute__((always_inline)) inline void ComSponbergAppDatastorePostcodesDSSuburb_init() {}

FOUNDATION_EXPORT NSString *ComSponbergAppDatastorePostcodesDSSuburb__table_;
J2OBJC_STATIC_FIELD_GETTER(ComSponbergAppDatastorePostcodesDSSuburb, _table_, NSString *)

FOUNDATION_EXPORT NSString *ComSponbergAppDatastorePostcodesDSSuburb_id__;
J2OBJC_STATIC_FIELD_GETTER(ComSponbergAppDatastorePostcodesDSSuburb, id__, NSString *)

FOUNDATION_EXPORT NSString *ComSponbergAppDatastorePostcodesDSSuburb_code_;
J2OBJC_STATIC_FIELD_GETTER(ComSponbergAppDatastorePostcodesDSSuburb, code_, NSString *)

FOUNDATION_EXPORT NSString *ComSponbergAppDatastorePostcodesDSSuburb_title_;
J2OBJC_STATIC_FIELD_GETTER(ComSponbergAppDatastorePostcodesDSSuburb, title_, NSString *)

#endif // _ComSponbergAppDatastorePostcodesDSSuburb_H_