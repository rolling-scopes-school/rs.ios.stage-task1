#import "LeaderBoardTracker.h"

@interface LeaderBoardTracker()

@property (nonatomic, strong) NSArray <NSNumber *> *playersPlaces;

@end

@implementation LeaderBoardTracker

- (NSArray <NSNumber *> *)trackLeaderBoard:(NSArray <NSNumber *> *)rankedArray
                               playerArray:(NSArray <NSNumber *> *)playerArray {
    if (playerArray == nil || playerArray.count == 0) {
        return @[];
    }
    NSMutableArray *result = [[NSMutableArray alloc] init];
    if (rankedArray == nil || rankedArray.count == 0) {
        for (NSInteger i = 0; i < playerArray.count; i++) {
            result[i] = @(1);
        }
    }
    NSOrderedSet *orderedRanked = [NSOrderedSet orderedSetWithArray:rankedArray];
    for (NSInteger i = 0; i < playerArray.count; i++) {
        NSInteger place = 1;
        while (place <= orderedRanked.count && playerArray[i].intValue < [orderedRanked[place-1] intValue]) {
            place++;
        }
        result[i]=@(place);
    }
    return result;
}

@end