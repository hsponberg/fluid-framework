//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src-delomboked/com/sponberg/fluid/layout/TableLayout.java
//

#ifndef _FFTTableLayout_H_
#define _FFTTableLayout_H_

@class FFTColor;
@class FFTTableLayout_TableSection;
@class JavaUtilArrayList;
@class JavaUtilHashMap;
@protocol JavaUtilList;

#import "JreEmulation.h"

@interface FFTTableLayout : NSObject {
 @public
  NSString *id__;
  FFTColor *backgroundColor_;
  JavaUtilArrayList *tableSections_;
  JavaUtilHashMap *layouts_;
}

- (id)initWithNSString:(NSString *)id_;

- (void)addSectionWithFFTTableLayout_TableSection:(FFTTableLayout_TableSection *)section;

- (id<JavaUtilList>)getTableSections;

- (NSString *)description;

- (NSString *)getId;

- (FFTColor *)getBackgroundColor;

- (JavaUtilHashMap *)getLayouts;

- (void)setBackgroundColorWithFFTColor:(FFTColor *)backgroundColor;

- (void)setTableSectionsWithJavaUtilArrayList:(JavaUtilArrayList *)tableSections;

- (void)setLayoutsWithJavaUtilHashMap:(JavaUtilHashMap *)layouts;

- (BOOL)isEqual:(id)o;

- (BOOL)canEqualWithId:(id)other;

- (NSUInteger)hash;

- (void)copyAllFieldsTo:(FFTTableLayout *)other;

@end

__attribute__((always_inline)) inline void FFTTableLayout_init() {}

J2OBJC_FIELD_SETTER(FFTTableLayout, id__, NSString *)
J2OBJC_FIELD_SETTER(FFTTableLayout, backgroundColor_, FFTColor *)
J2OBJC_FIELD_SETTER(FFTTableLayout, tableSections_, JavaUtilArrayList *)
J2OBJC_FIELD_SETTER(FFTTableLayout, layouts_, JavaUtilHashMap *)

typedef FFTTableLayout ComSponbergFluidLayoutTableLayout;

@interface FFTTableLayout_TableSection : NSObject {
 @public
  NSString *sectionId_;
  NSString *sectionHeaderLayout_;
  JavaUtilArrayList *layoutIds_;
}

- (id)initWithNSString:(NSString *)sectionId;

- (void)addLayoutWithNSString:(NSString *)layoutId;

- (id<JavaUtilList>)getLayoutIds;

- (NSString *)getSectionHeaderLayout;

- (void)setSectionHeaderLayoutWithNSString:(NSString *)sectionHeaderLayout;

- (NSString *)getSectionId;

- (void)copyAllFieldsTo:(FFTTableLayout_TableSection *)other;

@end

__attribute__((always_inline)) inline void FFTTableLayout_TableSection_init() {}

J2OBJC_FIELD_SETTER(FFTTableLayout_TableSection, sectionId_, NSString *)
J2OBJC_FIELD_SETTER(FFTTableLayout_TableSection, sectionHeaderLayout_, NSString *)
J2OBJC_FIELD_SETTER(FFTTableLayout_TableSection, layoutIds_, JavaUtilArrayList *)

#endif // _FFTTableLayout_H_
