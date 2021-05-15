#import "LeaderBoardTracker.h"

@interface LeaderBoardTracker()

@property (nonatomic, strong) NSArray <NSNumber *> *playersPlaces;

@end

@implementation LeaderBoardTracker

- (NSArray <NSNumber *> *)trackLeaderBoard:(NSArray <NSNumber *> *)rankedArray
                               playerArray:(NSArray <NSNumber *> *)playerArray {

    NSMutableArray *resultArray = [NSMutableArray arrayWithArray:@[]];

    if ([playerArray count] == 0) {
        return resultArray;
    } else {
        for (NSNumber *number in playerArray) {
            NSMutableArray *scoreArray = [NSMutableArray arrayWithArray:rankedArray];
            [scoreArray addObject:number];
            NSSet *scoreSet = [NSSet setWithArray:scoreArray];

            NSSortDescriptor* reverseDescriptor = [NSSortDescriptor sortDescriptorWithKey: @"self"
                                                                                ascending: NO];
            NSArray *score = [[scoreSet allObjects] sortedArrayUsingDescriptors:[NSArray arrayWithObject: reverseDescriptor]];
            
            NSNumber *result = [NSNumber numberWithInteger:[score indexOfObject:number] + 1];
            [resultArray addObject:result];
        }
        return resultArray;
    }
}

@end
