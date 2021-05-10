#import "NSArray+MinRotated.h"

@implementation NSArray (MinRotated)

- (NSNumber *)minRotated {
    return [self valueForKeyPath:@"@min.self"];
}

@end
