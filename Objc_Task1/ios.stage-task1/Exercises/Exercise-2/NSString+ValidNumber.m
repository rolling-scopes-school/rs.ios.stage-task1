#import "NSString+ValidNumber.h"

@implementation NSString (ValidNumber)

- (BOOL)isValidNumber {
    if (self == nil || self.length == 0) {
        return false;
    }
    NSCharacterSet *numericSet = [NSCharacterSet decimalDigitCharacterSet];
    for (NSInteger i = 0; i < self.length; i++) {
        unichar c = [self characterAtIndex:i];
        if (![numericSet characterIsMember:c]) {
            return false;
        }
    }
    return true;
}

@end
