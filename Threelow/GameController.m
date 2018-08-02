//
//  GameController.m
//  Threelow
//
//  Created by NICE on 2018-08-01.
//  Copyright © 2018 NICE. All rights reserved.
//

#import "GameController.h"

@implementation GameController

- (NSString *)getDiceString {
    NSString *diceString = [[NSString alloc] init];
    for (Dice *d in self.diceArray) {
        NSLog(@"%@", d);
    }
    return diceString;
}

@end
