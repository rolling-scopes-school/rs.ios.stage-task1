#import "NSString+ValidNumber.h"

@implementation NSString (ValidNumber)

- (BOOL)isValidNumber {
    if (self.length == 0) {
        return NO;
    }
    
    NSInteger location = 0;
    NSInteger chunkSize = 10;
    while (location < self.length) {
        NSInteger length = MIN(self.length - location, chunkSize);
        NSRange range = NSMakeRange(location, length);
        
        NSString *substring = [self substringWithRange:range];
        if ([self numberWithString:substring] == nil) {
            return NO;
        }
        location += chunkSize;
    }
    return YES;
}

- (nullable NSNumber *)numberWithString:(nonnull NSString *)string {
    if ([string containsString:@" "]) {
        return nil;
    }
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
    formatter.numberStyle = NSNumberFormatterDecimalStyle;
    return [formatter numberFromString:string];
}

@end
