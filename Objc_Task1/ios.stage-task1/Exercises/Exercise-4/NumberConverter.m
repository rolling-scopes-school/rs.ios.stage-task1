#import "NumberConverter.h"

@implementation NumberConverter

- (NSArray *)numberConverter:(NSNumber *)number {
    
    int x = [number intValue];
        if (x < 0){
            x *= -1;
        }
        
        NSMutableArray *array = [[NSMutableArray alloc] init];
        while (x > 0){
            
            int digit = x % 10;
            x /= 10;
            
            [array addObject:[NSString stringWithFormat:@"%d", digit]];
            
        }
        
        NSArray *finalArray = [[NSArray alloc] initWithArray:array];
        
        return finalArray;
    }
@end
