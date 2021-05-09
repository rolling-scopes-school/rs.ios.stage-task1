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
    for (NSNumber *n in array) {
        if ([n intValue] % 2 ) {
            count++;
        }
    }
    return count;
}

@end
