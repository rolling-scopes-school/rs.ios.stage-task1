#import "NumberConverter.h"

@implementation NumberConverter

- (NSArray *)numberConverter:(NSNumber *)number {
    NSMutableArray *array = [NSMutableArray array];
    
    while ([number intValue] != 0) {
        [array addObject:@(abs([number intValue] % 10))];
        number = @([number intValue] / 10);
    }
    
    NSMutableArray *res = [NSMutableArray array];
    
    for(int i = 0; i < [array count]; i++)
    {
        [res addObject:[[array objectAtIndex:i] stringValue]];
    }
    
    return res;
}

@end
