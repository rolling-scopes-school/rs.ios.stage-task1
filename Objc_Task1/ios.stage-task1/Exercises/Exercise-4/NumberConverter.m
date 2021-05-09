#import "NumberConverter.h"

@implementation NumberConverter

- (NSArray *)numberConverter:(NSNumber *)number {
    NSInteger num = ABS([number intValue]);
    NSMutableArray *result = [[NSMutableArray alloc] init];
    NSInteger i = 0;
    while (num > 0) {
        result[i] = [NSString stringWithFormat:@"%ld", num % 10];
        num = num / 10;
        i++;
    }
    return result;
}

@end
