//
//  OddNumbersTests.m
//  ios.stage-task1Tests
//
//  Created by Alex Tsybulko on 4.05.21.
//

#import <XCTest/XCTest.h>
#import "OddNumbers.h"

@interface OddNumbersTests : XCTestCase

@property (nonatomic, strong) OddNumbers *oddNumbers;

@end

@implementation OddNumbersTests

- (void)setUp {
    self.oddNumbers = [OddNumbers new];
}

- (void)tearDown {
    self.oddNumbers = nil;
}

- (void)test1 {
    NSArray *numbers = nil;
    XCTAssert([self.oddNumbers oddNumbers:numbers] == 0);
}

- (void)test2 {
    NSArray *numbers = @[@"4",@"2",@"8",@"1",@"9",@"5",@"8"];
    XCTAssert([self.oddNumbers oddNumbers:numbers] == 3);
}

- (void)test3 {
    NSArray *numbers = @[@"5",@"9",@"4",@"8",@"3",@"2",@"1",@"9",@"5"];
    XCTAssert([self.oddNumbers oddNumbers:numbers] == 6);
}

- (void)test4 {
    NSArray *numbers = @[@"9",@"3",@"2",@"9",@"1",@"7",@"5",@"4"];
    XCTAssert([self.oddNumbers oddNumbers:numbers] == 6);
}

- (void)test5 {
    NSArray *numbers = @[@"0",@"0",@"2",@"1",@"4",@"0",@"0",@"3",@"1"];
    XCTAssert([self.oddNumbers oddNumbers:numbers] == 3);
}

- (void)test6 {
    NSArray *numbers = @[@"8",@"4",@"9",@"3",@"2",@"1",@"8",@"4"];
    XCTAssert([self.oddNumbers oddNumbers:numbers] == 3);
}

@end
