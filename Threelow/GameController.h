//
//  GameController.h
//  Threelow
//
//  Created by NICE on 2018-08-01.
//  Copyright © 2018 NICE. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Dice.h"

@interface GameController : NSObject

@property (nonatomic) NSMutableArray *diceArray;
@property (nonatomic) NSMutableDictionary *heldDiceDictionary;

- (NSString *)getDiceString;
- (void)holdDie;
- (void)resetDice;
- (void)score;

@end
