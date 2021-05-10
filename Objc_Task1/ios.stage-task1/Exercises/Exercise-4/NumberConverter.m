#import "NumberConverter.h"

@implementation NumberConverter

- (NSArray *)numberConverter:(NSNumber *)number {
    NSString * str = @(llabs(number.integerValue)).stringValue;
    NSMutableArray * array = [[NSMutableArray alloc] initWithCapacity:[str length]];
    NSInteger location = str.length - 1;
    while (location >= 0) {
        NSRange range = NSMakeRange(location, 1);
        NSString *substring = [str substringWithRange:range];
        [array addObject:substring];
        location -= 1;
    }
    return array;
}

@end
