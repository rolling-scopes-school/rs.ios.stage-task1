//
//  OddNumbers.m
//  ios.stage-task1
//
//  Created by Alex Tsybulko on 4.05.21.
//

#import <Foundation/Foundation.h>
#import "OddNumbers.h"

@implementation OddNumbers

- (NSInteger)oddNumbers:(NSArray <NSNumber *> *)array {
    NSInteger count = 0;
    for (NSNumber *number in array) {
        NSInteger num = [number integerValue];
        if (num % 2 > 0) {
            count = count + 1;
        }
    }
    return count;
}

@end
