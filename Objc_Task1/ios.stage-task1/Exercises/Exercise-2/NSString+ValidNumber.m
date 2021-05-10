#import "NSString+ValidNumber.h"

@implementation NSString (ValidNumber)

- (BOOL)isValidNumber {

    NSCharacterSet *decimalSet = [NSCharacterSet decimalDigitCharacterSet];

    if ([[self stringByTrimmingCharactersInSet:decimalSet] length] > 0
        || [self length] == 0)
    {
        return NO;
    }

    return [self length] >= 0 && [self length] <= 100;
}

@end
