#import "NumberConverter.h"

@implementation NumberConverter

- (NSArray *)numberConverter:(NSNumber *)number {

    NSString *string = [[number stringValue] stringByReplacingOccurrencesOfString:@"-" withString:@""];

    NSMutableArray *array = [NSMutableArray arrayWithArray:@[]];
    for (int i = (int) [string length]; i > 0; i--)
    {
        NSUInteger index = i - 1;
        UniChar character = [string characterAtIndex:index];
        NSString *str = [NSString stringWithFormat:@"%C", character];
        [array addObject:str];
    }

    return array;
}

@end
