
#import <Foundation/Foundation.h>
#import "helpers.h"

@implementation Helpers: NSObject

BOOL throws(VoidBlock block) {
    @try {
        block();
    }
    @catch (NSException *exception) {
        return YES;
    }
    return NO;
}

@end