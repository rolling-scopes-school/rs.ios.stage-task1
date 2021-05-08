#import "LeaderBoardTracker.h"

@interface LeaderBoardTracker()

@property (nonatomic, strong) NSArray <NSNumber *> *playersPlaces;

@end

@implementation LeaderBoardTracker

- (NSArray <NSNumber *> *)trackLeaderBoard:(NSArray <NSNumber *> *)rankedArray
                               playerArray:(NSArray <NSNumber *> *)playerArray {
    
    NSMutableArray<NSNumber *> *positions = [NSMutableArray array];
    
    if([playerArray count] != 0){
        if([rankedArray count] != 0)
        {
            for(int i = 0; i < [playerArray count]; i++)
            {
                int pos = 1;
                for(int j = 0; j < [rankedArray count]; j++)
                {
                    if([[rankedArray objectAtIndex:j] intValue] == [[playerArray objectAtIndex:i] intValue] || [[rankedArray objectAtIndex:j] intValue] < [[playerArray objectAtIndex:i] intValue])
                    {
                        [positions addObject:@(pos)];
                        break;
                    }
                    if( j == [rankedArray count] - 1)
                    {
                        [positions addObject:@(pos + 1)];
                        break;
                    }
                    if(j != [rankedArray count] - 1 && [[rankedArray objectAtIndex:j] intValue] != [[rankedArray objectAtIndex:j + 1] intValue]){
                        pos++;
                    }
                }
            }
        }
        else{
            for(int i = 0; i < [playerArray count]; i++){
                [positions addObject:@(1)];
            }
        }
    }
    
    return positions;
}

@end
