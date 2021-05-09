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
    NSInteger counter = 0;
    for (int i = 0; i < [array count]; i++)
    {
        if ([array[i] intValue] % 2){
            counter ++;
        }
    }
    return counter;
}

@end
