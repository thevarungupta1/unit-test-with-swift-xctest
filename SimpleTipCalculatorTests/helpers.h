
#ifndef SimpleTipCalculator_helpers_h
#define SimpleTipCalculator_helpers_h

#import <Foundation/Foundation.h>

typedef void (^VoidBlock)(void);

@interface Helpers : NSObject

BOOL throws(VoidBlock block);

@end


#endif
