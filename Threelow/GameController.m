//
//  GameController.m
//  Threelow
//
//  Created by NICE on 2018-08-01.
//  Copyright © 2018 NICE. All rights reserved.
//

#import "GameController.h"

@implementation GameController

- (instancetype)init {
    if (self = [super init]) {
        _heldDiceDictionary = [[NSMutableDictionary alloc] init];
    }
    return self;
}


- (NSString *)getDiceString {
    NSString *diceString = [[NSString alloc] init];
    int i = 1;  // for dice index
    for (Dice *d in self.diceArray) {
        NSLog(@"%d - %@", i, d);
        i++;
    }
    return diceString;
}

- (void)holdDie {

    NSLog(@"Enter the dice number");
    NSString *holdDiceNumber = [InputHandler getInput];
    
    
    if ([[self.heldDiceDictionary allKeys] containsObject:holdDiceNumber]) {
        [self.heldDiceDictionary removeObjectForKey:holdDiceNumber];
    } else {
        [self.heldDiceDictionary setValue:self.diceArray[[holdDiceNumber intValue] - 1] forKey:holdDiceNumber];
    }
}

@end
