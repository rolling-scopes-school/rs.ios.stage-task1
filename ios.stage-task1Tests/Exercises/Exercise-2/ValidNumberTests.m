#import <XCTest/XCTest.h>
#import "NSString+ValidNumber.h"

@interface ValidNumberTests : XCTestCase

@end

@implementation ValidNumberTests

- (void)setUp {
    self.continueAfterFailure = false;
}

- (void)testEmptyString_invalidNumber {
    XCTAssertFalse(@"".isValidNumber);
}

- (void)testStringLength1_validNumber {
    for (int i = 0; i < 10; i++) {
        NSString *number = [NSString stringWithFormat:@"%d", i];
        XCTAssertTrue(number.isValidNumber);
    }
}

- (void)testStringLength1_invalidNumber1 {
    XCTAssertFalse(@"a".isValidNumber);
}

- (void)testStringLength1_invalidNumber2 {
    XCTAssertFalse(@"z".isValidNumber);
}

- (void)testStringLength1_invalidNumber3 {
    XCTAssertFalse(@"&".isValidNumber);
}

- (void)testStringLength1_invalidNumber4 {
    XCTAssertFalse(@"-".isValidNumber);
}

- (void)testStringLength2_invalidNumber1 {
    XCTAssertFalse(@"1a".isValidNumber);
}


- (void)testStringLength2_invalidNumber2 {
    XCTAssertFalse(@"a1".isValidNumber);
}

- (void)testStringLength2_invalidNumber3 {
    XCTAssertFalse(@"zz".isValidNumber);
}

- (void)testStringLength2_validNumber {
    for (int j = 0; j < 10; j++) {
        for (int i = 0; i < 10; i++) {
            NSString *number = [NSString stringWithFormat:@"%d%d", i, j];
            XCTAssertTrue(number.isValidNumber);
        }
    }
}

- (void)testStringLength5_validNumber {
    XCTAssertTrue(@"00000".isValidNumber);
}

- (void)testStringLength10_validNumber {
    XCTAssertTrue(@"000000000".isValidNumber);
}

- (void)testStringLength10_invalidNumber {
    XCTAssertFalse(@"0000_0000".isValidNumber);
}

- (void)testString_validNumber1 {
    XCTAssertTrue(@"9223372036854775808".isValidNumber);
}

- (void)testString_validNumber2 {
    XCTAssertTrue(@"18446744073709551616".isValidNumber);
}

- (void)testString_validNumber3 {
    XCTAssertTrue(@"1994944651178358072429048023200213236683392121228767661503771057347542800435514995514649693380054946".isValidNumber);
}

- (void)testString_invalidNumber1 {
    XCTAssertFalse(@"199494465117835807242904802320021323668339212122876766150377105734754280043551499551464969338005494)".isValidNumber);
}

- (void)testString_invalidNumber2 {
    XCTAssertFalse(@"199494465117835807242904802320021323668339212122876766150377&057347542800435514995514649693380054944".isValidNumber);
}

@end
