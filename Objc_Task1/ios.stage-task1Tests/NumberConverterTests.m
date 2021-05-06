#import <XCTest/XCTest.h>
#import "NumberConverter.h"

@interface NumberConverterTests : XCTestCase

@property (nonatomic, strong) NumberConverter *converter;

@end

@implementation NumberConverterTests

- (void)setUp {
    self.converter = [[NumberConverter alloc] init];
}

- (void)tearDown {
    self.converter = nil;
}

- (void)test1 {
    NSNumber *number = nil;
    XCTAssertNotNil([self.converter numberConverter: number]);
}

- (void)test2 {
    NSNumber *number = @8591824;
    NSArray *resultArray = @[@"4",@"2",@"8",@"1",@"9",@"5",@"8"];
    XCTAssertEqualObjects([self.converter numberConverter: number], resultArray);
}

- (void)test3 {
    NSNumber *number = @591238495;
    NSArray *resultArray = @[@"5",@"9",@"4",@"8",@"3",@"2",@"1",@"9",@"5"];
    XCTAssertEqualObjects([self.converter numberConverter: number], resultArray);
}

- (void)test4 {
    NSNumber *number = @45719239;
    NSArray *resultArray = @[@"9",@"3",@"2",@"9",@"1",@"7",@"5",@"4"];
    XCTAssertEqualObjects([self.converter numberConverter: number], resultArray);
}

- (void)test5 {
    NSNumber *number = @130041200;
    NSArray *resultArray = @[@"0",@"0",@"2",@"1",@"4",@"0",@"0",@"3",@"1"];
    XCTAssertEqualObjects([self.converter numberConverter: number], resultArray);
}

- (void)test6 {
    NSNumber *number = @-48123948;
    NSArray *resultArray = @[@"8",@"4",@"9",@"3",@"2",@"1",@"8",@"4"];
    XCTAssertEqualObjects([self.converter numberConverter: number], resultArray);
}

@end
