//
//  main.m
//  Threelow
//
//  Created by NICE on 2018-08-01.
//  Copyright © 2018 NICE. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputHandler.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        Dice *dice1 = [[Dice alloc] init];
        Dice *dice2 = [[Dice alloc] init];
        Dice *dice3 = [[Dice alloc] init];
        Dice *dice4 = [[Dice alloc] init];
        Dice *dice5 = [[Dice alloc] init];
        GameController *gameController = [[GameController alloc] init];

       
        while (gameOn) {
            NSLog(@"Enter: ");
            NSString *userInput = [InputHandler getInput];
            NSString *diceString1 = [dice1 randomizeValue];
            NSString *diceString2 = [dice2 randomizeValue];
            NSString *diceString3 = [dice3 randomizeValue];
            NSString *diceString4 = [dice4 randomizeValue];
            NSString *diceString5 = [dice5 randomizeValue];
            
            gameController.diceArray = [NSMutableArray arrayWithObjects:diceString1, diceString2, diceString3, diceString4, diceString5, nil];
            
            for (NSString *hold in gameController.heldDiceDictionary) {
                NSString *holdDiceString = [NSString stringWithFormat:@"[%@]", gameController.heldDiceDictionary[hold]];
                gameController.diceArray[[hold intValue] - 1] = holdDiceString;
            }
            
            if ([userInput isEqual:@"roll"]) {
                NSLog(@"%@", [gameController getDiceString]);
            } else if ([userInput isEqual:@"hold"]) {
                [gameController holdDie];
            }
        }
        
    }
    return 0;
}
