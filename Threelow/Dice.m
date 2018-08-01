//
//  Dice.m
//  Threelow
//
//  Created by NICE on 2018-08-01.
//  Copyright © 2018 NICE. All rights reserved.
//

#import "Dice.h"

@implementation Dice

- (instancetype)init {
    if (self = [super init]) {
        _diceValue = @[@"⚀", @"⚁", @"⚂", @"⚃", @"⚄", @"⚅"];
    }
    return self;
}


- (NSString *)randomizeValue {
    NSString *randomizeValue = [self.diceValue objectAtIndex:arc4random_uniform(6)];
    return randomizeValue;
}

@end
