#import "NSString+ValidNumber.h"

@implementation NSString (ValidNumber)

- (BOOL)isValidNumber {
    BOOL isValid = false;
    
    if([self length] > 0 && [self length] <= 100)
    {
        for(int i = 0; i < [self length]; i++)
        {
            char ch = [self characterAtIndex: i];
            if(ch < '0' || ch > '9')
                return false;
        }
        
        isValid = true;
    }
    return isValid;
}

@end
