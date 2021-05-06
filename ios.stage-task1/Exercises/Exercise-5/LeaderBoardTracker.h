#import <Foundation/Foundation.h>

@interface LeaderBoardTracker: NSObject

- (NSArray <NSNumber *> *)trackLeaderBoard:(NSArray <NSNumber *> *)rankedArray
                               playerArray:(NSArray <NSNumber *> *)playerArray;

@end

