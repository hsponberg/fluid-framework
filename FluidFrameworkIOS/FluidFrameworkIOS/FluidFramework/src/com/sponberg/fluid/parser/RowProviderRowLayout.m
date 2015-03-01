//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src-delomboked/com/sponberg/fluid/parser/RowProviderRowLayout.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "com/sponberg/fluid/FluidApp.h"
#include "com/sponberg/fluid/GlobalState.h"
#include "com/sponberg/fluid/layout/DataModelManager.h"
#include "com/sponberg/fluid/layout/TableLayout.h"
#include "com/sponberg/fluid/layout/TableList.h"
#include "com/sponberg/fluid/layout/TableRow.h"
#include "com/sponberg/fluid/layout/TableRowWithId.h"
#include "com/sponberg/fluid/layout/TableRowWithIdAndHeight.h"
#include "com/sponberg/fluid/parser/RowProviderRowLayout.h"
#include "com/sponberg/fluid/util/Logger.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/lang/RuntimeException.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

@implementation FFTRowProviderRowLayout

- (id)initWithNSString:(NSString *)dataModelKey
          withNSString:(NSString *)rowLayout {
  if (self = [super init]) {
    list_ = nil;
    rowItems_ = nil;
    defaultSection_ = [[FFTTableLayout_TableSection alloc] initWithNSString:@"default"];
    self->dataModelKey_ = dataModelKey;
    self->rowLayout_ = rowLayout;
    listenerId_ = [NSString stringWithFormat:@"rows-provider-%@-%@", dataModelKey, rowLayout];
  }
  return self;
}

- (void)populate {
  if (list_ != nil) {
    return;
  }
  FFTFluidApp *app = FFTGlobalState_get_fluidApp__();
  self->list_ = (FFTTableList *) check_class_cast([((FFTDataModelManager *) nil_chk([((FFTFluidApp *) nil_chk(app)) getDataModelManager])) getObjectWithNSString:dataModelKey_], [FFTTableList class]);
  self->rowItems_ = [[JavaUtilArrayList alloc] init];
  for (id<FFTTableRowWithId> __strong tableRowWithId in nil_chk([((FFTTableList *) nil_chk(self->list_)) getRows])) {
    FFTTableRow *row = [[FFTTableRow alloc] init];
    [row setLayoutWithNSString:rowLayout_];
    [row setKeyWithNSString:[NSString stringWithFormat:@"%@.%@", dataModelKey_, [((id<FFTTableRowWithId>) nil_chk(tableRowWithId)) getFluidTableRowObjectId]]];
    [row setIdWithLong:[((JavaLangLong *) nil_chk([tableRowWithId getFluidTableRowObjectId])) longLongValue]];
    [self->rowItems_ addWithId:row];
  }
  [((FFTDataModelManager *) nil_chk([((FFTFluidApp *) nil_chk(FFTGlobalState_get_fluidApp__())) getDataModelManager])) addDataChangeListenerWithNSString:dataModelKey_ withNSString:listenerId_ withBoolean:YES withFFTDataChangeListener:[[FFTRowProviderRowLayout_$1 alloc] initWithFFTRowProviderRowLayout:self]];
}

- (FFTTableList *)getList {
  [self populate];
  return self->list_;
}

- (id<JavaUtilList>)getRows {
  [self populate];
  return rowItems_;
}

- (int)getCount {
  return [((id<JavaUtilList>) nil_chk([self getRows])) size] + 1;
}

- (id)getRowItemAtWithInt:(int)index {
  return [((id<JavaUtilList>) nil_chk([self getRows])) getWithInt:index];
}

- (NSString *)getRowLayout {
  return rowLayout_;
}

- (id)getRowOrSectionAtWithInt:(int)index {
  if (index == 0) {
    return defaultSection_;
  }
  else {
    return [((id<JavaUtilList>) nil_chk([self getRows])) getWithInt:index - 1];
  }
}

- (long long int)getItemIdAtWithInt:(int)index {
  if (index == 0) {
    return 0;
  }
  else {
    return [((FFTTableRow *) nil_chk([((id<JavaUtilList>) nil_chk([self getRows])) getWithInt:index - 1])) getId];
  }
}

- (double)getHeightFromObjectWithWithLong:(long long int)id_ {
  id<FFTTableRowWithIdAndHeight> row = (id<FFTTableRowWithIdAndHeight>) check_protocol_cast([((FFTTableList *) nil_chk([self getList])) getByIdWithJavaLangLong:[JavaLangLong valueOfWithLong:id_]], @protocol(FFTTableRowWithIdAndHeight));
  if (row == nil) {
    [FFTLogger warnWithId:self withNSString:@"Row is null for id {}" withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ [JavaLangLong valueOfWithLong:id_] } count:1 type:[IOSClass classWithClass:[NSObject class]]]];
    return 0;
  }
  return [((id<FFTTableRowWithIdAndHeight>) nil_chk(row)) getFluidTableRowHeight];
}

- (FFTTableRow *)getRowInSectionAtWithInt:(int)sectionIndex
                                  withInt:(int)rowIndex {
  if (sectionIndex == 0) {
    return [((id<JavaUtilList>) nil_chk([self getRows])) getWithInt:rowIndex];
  }
  else {
    @throw [[JavaLangRuntimeException alloc] initWithNSString:[NSString stringWithFormat:@"Excpected sectionIndex == 0, was %d", sectionIndex]];
  }
}

- (long long int)getItemIdAtWithInt:(int)sectionIndex
                            withInt:(int)rowIndex {
  return [((FFTTableRow *) nil_chk([self getRowInSectionAtWithInt:sectionIndex withInt:rowIndex])) getId];
}

- (FFTTableLayout_TableSection *)getSectionAtWithInt:(int)sectionIndex {
  return nil;
}

- (int)getNumSections {
  return 1;
}

- (int)getNumRowsInSectionWithInt:(int)sectionIndex {
  if (sectionIndex == 0) {
    return [((id<JavaUtilList>) nil_chk([self getRows])) size];
  }
  else {
    @throw [[JavaLangRuntimeException alloc] initWithNSString:[NSString stringWithFormat:@"Excpected sectionIndex == 0, was %d", sectionIndex]];
  }
}

- (int)getRowIndexOfObjectWithLong:(long long int)id_ {
  return [((JavaLangInteger *) nil_chk([((FFTTableList *) nil_chk([self getList])) getIndexWithJavaLangLong:[JavaLangLong valueOfWithLong:id_]])) intValue];
}

- (int)getIndexOfRecentlyDeletedObjectWithLong:(long long int)id_ {
  return [((JavaLangInteger *) nil_chk([((FFTTableList *) nil_chk([self getList])) getIndexOfRecentlyDeletedWithJavaLangLong:[JavaLangLong valueOfWithLong:id_]])) intValue];
}

- (void)copyAllFieldsTo:(FFTRowProviderRowLayout *)other {
  [super copyAllFieldsTo:other];
  other->dataModelKey_ = dataModelKey_;
  other->defaultSection_ = defaultSection_;
  other->list_ = list_;
  other->listenerId_ = listenerId_;
  other->rowItems_ = rowItems_;
  other->rowLayout_ = rowLayout_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withNSString:", "RowProviderRowLayout", NULL, 0x1, NULL },
    { "populate", NULL, "V", 0x4, NULL },
    { "getList", NULL, "Lcom.sponberg.fluid.layout.TableList;", 0x0, NULL },
    { "getRows", NULL, "Ljava.util.List;", 0x0, NULL },
    { "getCount", NULL, "I", 0x1, NULL },
    { "getRowItemAtWithInt:", "getRowItemAt", "Ljava.lang.Object;", 0x1, NULL },
    { "getRowLayout", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "getRowOrSectionAtWithInt:", "getRowOrSectionAt", "Ljava.lang.Object;", 0x1, NULL },
    { "getItemIdAtWithInt:", "getItemIdAt", "J", 0x1, NULL },
    { "getHeightFromObjectWithWithLong:", "getHeightFromObjectWith", "D", 0x1, NULL },
    { "getRowInSectionAtWithInt:withInt:", "getRowInSectionAt", "Lcom.sponberg.fluid.layout.TableRow;", 0x1, NULL },
    { "getItemIdAtWithInt:withInt:", "getItemIdAt", "J", 0x1, NULL },
    { "getSectionAtWithInt:", "getSectionAt", "Lcom.sponberg.fluid.layout.TableLayout$TableSection;", 0x1, NULL },
    { "getNumSections", NULL, "I", 0x1, NULL },
    { "getNumRowsInSectionWithInt:", "getNumRowsInSection", "I", 0x1, NULL },
    { "getRowIndexOfObjectWithLong:", "getRowIndexOfObject", "I", 0x1, NULL },
    { "getIndexOfRecentlyDeletedObjectWithLong:", "getIndexOfRecentlyDeletedObject", "I", 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "list_", NULL, 0x0, "Lcom.sponberg.fluid.layout.TableList;", NULL,  },
    { "rowItems_", NULL, 0x0, "Ljava.util.List;", NULL,  },
    { "dataModelKey_", NULL, 0x10, "Ljava.lang.String;", NULL,  },
    { "rowLayout_", NULL, 0x10, "Ljava.lang.String;", NULL,  },
    { "listenerId_", NULL, 0x10, "Ljava.lang.String;", NULL,  },
    { "defaultSection_", NULL, 0x0, "Lcom.sponberg.fluid.layout.TableLayout$TableSection;", NULL,  },
  };
  static J2ObjcClassInfo _FFTRowProviderRowLayout = { "RowProviderRowLayout", "com.sponberg.fluid.parser", NULL, 0x1, 17, methods, 6, fields, 0, NULL};
  return &_FFTRowProviderRowLayout;
}

@end

@implementation FFTRowProviderRowLayout_$1

- (void)dataRemovedWithNSString:(NSString *)key {
  this$0_->list_ = nil;
  this$0_->rowItems_ = nil;
  [((FFTDataModelManager *) nil_chk([((FFTFluidApp *) nil_chk(FFTGlobalState_get_fluidApp__())) getDataModelManager])) removeDataChangeListenerWithNSString:this$0_->listenerId_];
}

- (void)dataChangedWithNSString:(NSString *)key
              withNSStringArray:(IOSObjectArray *)subKeys {
  this$0_->list_ = nil;
  this$0_->rowItems_ = nil;
  [((FFTDataModelManager *) nil_chk([((FFTFluidApp *) nil_chk(FFTGlobalState_get_fluidApp__())) getDataModelManager])) removeDataChangeListenerWithNSString:this$0_->listenerId_];
}

- (id)initWithFFTRowProviderRowLayout:(FFTRowProviderRowLayout *)outer$ {
  this$0_ = outer$;
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "dataRemovedWithNSString:", "dataRemoved", "V", 0x1, NULL },
    { "dataChangedWithNSString:withNSStringArray:", "dataChanged", "V", 0x81, NULL },
    { "initWithFFTRowProviderRowLayout:", "init", NULL, 0x0, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lcom.sponberg.fluid.parser.RowProviderRowLayout;", NULL,  },
  };
  static J2ObjcClassInfo _FFTRowProviderRowLayout_$1 = { "$1", "com.sponberg.fluid.parser", "RowProviderRowLayout", 0x8000, 3, methods, 1, fields, 0, NULL};
  return &_FFTRowProviderRowLayout_$1;
}

@end