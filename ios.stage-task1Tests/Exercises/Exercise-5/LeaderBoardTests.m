#import <XCTest/XCTest.h>
#import "LeaderBoardTracker.h"

@interface LeaderBoardTests : XCTestCase
@property (nonatomic, strong) LeaderBoardTracker *leaderBoardTracker;
@end

@implementation LeaderBoardTests

- (void)setUp {
    self.leaderBoardTracker = [LeaderBoardTracker new];
}

- (void)tearDown {
    self.leaderBoardTracker = NULL;
}

- (void)test1 {
    NSArray *rankedArray = @[@(100), @(80), @(80), @(50), @(20)];
    NSArray *playerArray = @[@(10), @(25), @(70), @(80), @(105)];
    NSArray *results = [self.leaderBoardTracker trackLeaderBoard:rankedArray playerArray:playerArray];
    NSArray *expectedResults = @[@(5), @(4), @(3), @(2), @(1)];
    XCTAssertEqualObjects(results, expectedResults);
}

- (void)test2 {
    NSArray *rankedArray = @[@(100), @(80), @(80), @(50), @(20)];
    NSArray *playerArray = @[@(20), @(50), @(80), @(80), @(100)];
    NSArray *results = [self.leaderBoardTracker trackLeaderBoard:rankedArray playerArray:playerArray];
    NSArray *expectedResults = @[@(4), @(3), @(2), @(2), @(1)];
    XCTAssertEqualObjects(results, expectedResults);
}

- (void)test3 {
    NSArray *rankedArray = @[@(100), @(80), @(80), @(50), @(20)];
    NSArray *playerArray = @[@(5), @(10), @(20), @(80)];
    NSArray *results = [self.leaderBoardTracker trackLeaderBoard:rankedArray playerArray:playerArray];
    NSArray *expectedResults = @[@(5), @(5), @(4), @(2)];
    XCTAssertEqualObjects(results, expectedResults);
}

- (void)test4 {
    NSArray *rankedArray = @[@(100), @(100), @(100), @(100)];
    NSArray *playerArray = @[@(5), @(10), @(20), @(80), @(100)];
    NSArray *results = [self.leaderBoardTracker trackLeaderBoard:rankedArray playerArray:playerArray];
    NSArray *expectedResults = @[@(2), @(2), @(2), @(2), @(1)];
    XCTAssertEqualObjects(results, expectedResults);
}

- (void)test5 {
    NSArray *rankedArray = @[@(100), @(100), @(100), @(100)];
    NSArray *playerArray = @[@(100), @(100), @(115), @(115), @(120)];
    NSArray *results = [self.leaderBoardTracker trackLeaderBoard:rankedArray playerArray:playerArray];
    NSArray *expectedResults = @[@(1), @(1), @(1), @(1), @(1)];
    XCTAssertEqualObjects(results, expectedResults);
}

- (void)test6 {
    NSArray *rankedArray = @[@(100), @(80), @(80), @(50), @(20)];
    NSArray *playerArray = @[];
    NSArray *results = [self.leaderBoardTracker trackLeaderBoard:rankedArray playerArray:playerArray];
    NSArray *expectedResults = @[];
    XCTAssertEqualObjects(results, expectedResults);
}

- (void)test7 {
    NSArray *rankedArray = @[];
    NSArray *playerArray = @[@(5), @(10), @(20), @(80)];
    NSArray *results = [self.leaderBoardTracker trackLeaderBoard:rankedArray playerArray:playerArray];
    NSArray *expectedResults = @[@(1), @(1), @(1), @(1)];
    XCTAssertEqualObjects(results, expectedResults);
}

@end
