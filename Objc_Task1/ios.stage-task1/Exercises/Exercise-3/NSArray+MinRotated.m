#import "NSArray+MinRotated.h"

@implementation NSArray (MinRotated)

- (NSNumber *)minRotated {
    
    if (self.count == 0)return nil;
    
    long l = 0, r = self.count - 1;
    while (r - l > 1){
        long mid = (r + l) / 2;
        if (mid > 0 && [self[mid] intValue] < [self[mid - 1] intValue]){
            return self[mid];
        }
        if ([self[mid] intValue] < [self.lastObject intValue])r = mid;
        else l = mid;
    }
    if ([self[l] intValue] < [self[r] intValue])return self[l];
    else return self[r];
}

@end
