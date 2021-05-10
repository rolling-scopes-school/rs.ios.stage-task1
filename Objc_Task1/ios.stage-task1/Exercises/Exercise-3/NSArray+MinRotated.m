#import "NSArray+MinRotated.h"

@implementation NSArray (MinRotated)

- (NSNumber *)minRotated {
    if (self.count == 0) {
        return nil;
    }
    if (![self isKindOfClass: [NSArray<NSNumber *> class]]) {
        return nil;
    }
    NSMutableArray<NSNumber *> * array = [self mutableCopy];
    while (array[0].doubleValue > array[array.count - 1].doubleValue) {
        [array addObject:array[0]];
        [array removeObjectAtIndex:0];
    }
    return array[0];
}

@end
