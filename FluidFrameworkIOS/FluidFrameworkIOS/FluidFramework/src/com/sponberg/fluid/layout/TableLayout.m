//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src-delomboked/com/sponberg/fluid/layout/TableLayout.java
//

#include "com/sponberg/fluid/layout/Color.h"
#include "com/sponberg/fluid/layout/TableLayout.h"
#include "java/util/ArrayList.h"
#include "java/util/HashMap.h"
#include "java/util/List.h"

@implementation FFTTableLayout

- (id)initWithNSString:(NSString *)id_ {
  if (self = [super init]) {
    tableSections_ = [[JavaUtilArrayList alloc] init];
    layouts_ = [[JavaUtilHashMap alloc] init];
    self->id__ = id_;
  }
  return self;
}

- (void)addSectionWithFFTTableLayout_TableSection:(FFTTableLayout_TableSection *)section {
  [((JavaUtilArrayList *) nil_chk(tableSections_)) addWithId:section];
}

- (id<JavaUtilList>)getTableSections {
  return tableSections_;
}

- (NSString *)description {
  return [NSString stringWithFormat:@"TableLayout(id=%@, backgroundColor=%@, tableSections=%@, layouts=%@)", [self getId], [self getBackgroundColor], [self getTableSections], [self getLayouts]];
}

- (NSString *)getId {
  return self->id__;
}

- (FFTColor *)getBackgroundColor {
  return self->backgroundColor_;
}

- (JavaUtilHashMap *)getLayouts {
  return self->layouts_;
}

- (void)setBackgroundColorWithFFTColor:(FFTColor *)backgroundColor {
  self->backgroundColor_ = backgroundColor;
}

- (void)setTableSectionsWithJavaUtilArrayList:(JavaUtilArrayList *)tableSections {
  self->tableSections_ = tableSections;
}

- (void)setLayoutsWithJavaUtilHashMap:(JavaUtilHashMap *)layouts {
  self->layouts_ = layouts;
}

- (BOOL)isEqual:(id)o {
  if (o == self) return YES;
  if (!([o isKindOfClass:[FFTTableLayout class]])) return NO;
  FFTTableLayout *other = (FFTTableLayout *) check_class_cast(o, [FFTTableLayout class]);
  if (![((FFTTableLayout *) nil_chk(other)) canEqualWithId:(id) check_class_cast(self, [NSObject class])]) return NO;
  id this$id = [self getId];
  id other$id = [other getId];
  if (this$id == nil ? other$id != nil : ![this$id isEqual:other$id]) return NO;
  id this$backgroundColor = [self getBackgroundColor];
  id other$backgroundColor = [other getBackgroundColor];
  if (this$backgroundColor == nil ? other$backgroundColor != nil : ![this$backgroundColor isEqual:other$backgroundColor]) return NO;
  id this$tableSections = [self getTableSections];
  id other$tableSections = [other getTableSections];
  if (this$tableSections == nil ? other$tableSections != nil : ![this$tableSections isEqual:other$tableSections]) return NO;
  id this$layouts = [self getLayouts];
  id other$layouts = [other getLayouts];
  if (this$layouts == nil ? other$layouts != nil : ![this$layouts isEqual:other$layouts]) return NO;
  return YES;
}

- (BOOL)canEqualWithId:(id)other {
  return [other isKindOfClass:[FFTTableLayout class]];
}

- (NSUInteger)hash {
  int PRIME = 59;
  int result = 1;
  id $id = [self getId];
  result = result * PRIME + ($id == nil ? 0 : ((int) [$id hash]));
  id $backgroundColor = [self getBackgroundColor];
  result = result * PRIME + ($backgroundColor == nil ? 0 : ((int) [$backgroundColor hash]));
  id $tableSections = [self getTableSections];
  result = result * PRIME + ($tableSections == nil ? 0 : ((int) [$tableSections hash]));
  id $layouts = [self getLayouts];
  result = result * PRIME + ($layouts == nil ? 0 : ((int) [$layouts hash]));
  return result;
}

- (void)copyAllFieldsTo:(FFTTableLayout *)other {
  [super copyAllFieldsTo:other];
  other->backgroundColor_ = backgroundColor_;
  other->id__ = id__;
  other->layouts_ = layouts_;
  other->tableSections_ = tableSections_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithNSString:", "TableLayout", NULL, 0x1, NULL },
    { "addSectionWithFFTTableLayout_TableSection:", "addSection", "V", 0x1, NULL },
    { "getTableSections", NULL, "Ljava.util.List;", 0x1, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
    { "getId", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "getBackgroundColor", NULL, "Lcom.sponberg.fluid.layout.Color;", 0x1, NULL },
    { "getLayouts", NULL, "Ljava.util.HashMap;", 0x1, NULL },
    { "setBackgroundColorWithFFTColor:", "setBackgroundColor", "V", 0x1, NULL },
    { "setTableSectionsWithJavaUtilArrayList:", "setTableSections", "V", 0x1, NULL },
    { "setLayoutsWithJavaUtilHashMap:", "setLayouts", "V", 0x1, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL },
    { "canEqualWithId:", "canEqual", "Z", 0x4, NULL },
    { "hash", "hashCode", "I", 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "id__", "id", 0x12, "Ljava.lang.String;", NULL,  },
    { "backgroundColor_", NULL, 0x2, "Lcom.sponberg.fluid.layout.Color;", NULL,  },
    { "tableSections_", NULL, 0x0, "Ljava.util.ArrayList;", NULL,  },
    { "layouts_", NULL, 0x2, "Ljava.util.HashMap;", NULL,  },
  };
  static J2ObjcClassInfo _FFTTableLayout = { "TableLayout", "com.sponberg.fluid.layout", NULL, 0x1, 13, methods, 4, fields, 0, NULL};
  return &_FFTTableLayout;
}

@end

@implementation FFTTableLayout_TableSection

- (id)initWithNSString:(NSString *)sectionId {
  if (self = [super init]) {
    layoutIds_ = [[JavaUtilArrayList alloc] init];
    self->sectionId_ = sectionId;
  }
  return self;
}

- (void)addLayoutWithNSString:(NSString *)layoutId {
  [((JavaUtilArrayList *) nil_chk(layoutIds_)) addWithId:layoutId];
}

- (id<JavaUtilList>)getLayoutIds {
  return layoutIds_;
}

- (NSString *)getSectionHeaderLayout {
  return sectionHeaderLayout_;
}

- (void)setSectionHeaderLayoutWithNSString:(NSString *)sectionHeaderLayout {
  self->sectionHeaderLayout_ = sectionHeaderLayout;
}

- (NSString *)getSectionId {
  return sectionId_;
}

- (void)copyAllFieldsTo:(FFTTableLayout_TableSection *)other {
  [super copyAllFieldsTo:other];
  other->layoutIds_ = layoutIds_;
  other->sectionHeaderLayout_ = sectionHeaderLayout_;
  other->sectionId_ = sectionId_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithNSString:", "TableSection", NULL, 0x1, NULL },
    { "addLayoutWithNSString:", "addLayout", "V", 0x1, NULL },
    { "getLayoutIds", NULL, "Ljava.util.List;", 0x1, NULL },
    { "getSectionHeaderLayout", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "setSectionHeaderLayoutWithNSString:", "setSectionHeaderLayout", "V", 0x1, NULL },
    { "getSectionId", NULL, "Ljava.lang.String;", 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "sectionId_", NULL, 0x10, "Ljava.lang.String;", NULL,  },
    { "sectionHeaderLayout_", NULL, 0x0, "Ljava.lang.String;", NULL,  },
    { "layoutIds_", NULL, 0x0, "Ljava.util.ArrayList;", NULL,  },
  };
  static J2ObjcClassInfo _FFTTableLayout_TableSection = { "TableSection", "com.sponberg.fluid.layout", "TableLayout", 0x9, 6, methods, 3, fields, 0, NULL};
  return &_FFTTableLayout_TableSection;
}

@end