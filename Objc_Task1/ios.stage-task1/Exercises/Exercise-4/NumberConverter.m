#import "NumberConverter.h"

@implementation NumberConverter

- (NSArray *)numberConverter:(NSNumber *)number {

    NSInteger unsignedInt = [number unsignedIntValue];
    NSString *string = [NSString stringWithFormat:@"%ld", (long)unsignedInt];

    NSMutableArray *array = [NSMutableArray arrayWithArray:@[]];
    for (int i = [string length]; i > 0; i--)
    {
        NSUInteger index = i - 1;
        UniChar character = [string characterAtIndex:index];
        NSString *str = [NSString stringWithFormat:@"%C", character];
        [array addObject:str];
    }

    return array;
}

@end
