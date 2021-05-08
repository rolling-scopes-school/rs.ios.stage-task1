#import "NSArray+MinRotated.h"
#import <math.h>

@implementation NSArray (MinRotated)

-(int)minElement
{
    NSNumber *min = [self objectAtIndex:0];
    int minIdx = 0;
    for(int  j = 0; j < [self count]; j++)
    {
        if([[self objectAtIndex: j] intValue] < [min intValue])
        {
            min =  [self objectAtIndex: j];
            minIdx = j;
        }
    }
    
    return minIdx;
}

-(int)findPivot
{
    int start = 0;
    int end = [self count] - 1;
    
    if([[self objectAtIndex:0]intValue] <= [[self objectAtIndex: end]intValue])
    {
        return 0;
    }
    
    while (start <= end)
    {
        int mid = (start + end) / 2;
        
        if([[self objectAtIndex: mid] intValue] > [[self objectAtIndex: mid + 1] intValue]){
            return mid + 1;
        }
        else if([[self objectAtIndex: start] intValue] <= [[self objectAtIndex: mid] intValue])
        {
            start = mid + 1;
        }
        else
        {
            end = mid - 1;
        }
    }
    
    return 0;
}

- (NSNumber *)minRotated {
    NSMutableArray *main = [NSMutableArray array];
    NSMutableArray *arr = [NSMutableArray array];
    NSMutableArray *rotation = [NSMutableArray array];
    
    main = [NSMutableArray arrayWithArray:[self sortedArrayUsingSelector:@selector(compare:)]];
    
    for(int i = 0; i < [main count]; i++)
    {
        NSNumber *temp = [main objectAtIndex: i];
        if([temp intValue] < 0)
        {
            while ([temp intValue] != 0) {
                [arr addObject: @(abs(temp.intValue % 10))];
                temp = @(([temp intValue]) / 10);
            }
            NSNumber *num = [arr objectAtIndex: [arr count] - 1];
            [arr replaceObjectAtIndex: [arr count] - 1 withObject:@(-[num intValue])];
        }
        else
        {
            while ([temp intValue] != 0) {
                [arr addObject: @(temp.intValue % 10)];
                temp = @([temp intValue] / 10);
            }
        }
    
        
        arr = [NSMutableArray arrayWithArray: [[arr reverseObjectEnumerator] allObjects]];
        
        [rotation addObject:@([arr findPivot])];
        [arr removeAllObjects];
    }
    
    NSNumber *res = nil;
    if([rotation count] != 0)
    {
        res = [main objectAtIndex: [rotation minElement]];
    }
    return res;
}

@end
