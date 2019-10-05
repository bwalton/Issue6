#import "rm_helper.h"

@implementation RMHelper

+ (void) set_hidden: (NSDictionary*) args {
  id control = [args objectForKey: @"control"];
  id value = [args objectForKey: @"hidden_value"];
  [control setHidden: value];
}

@end
