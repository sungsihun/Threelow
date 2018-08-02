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
        InputHandler *inputHandler = [[InputHandler alloc] init];
        Dice *dice = [[Dice alloc] init];
        GameController *gameController = [[GameController alloc] init];
        
        while (gameOn) {
            NSLog(@"Enter: ");
            NSString *userInput = [inputHandler getInput];
            NSString *dice1 = [dice randomizeValue];
            NSString *dice2 = [dice randomizeValue];
            NSString *dice3 = [dice randomizeValue];
            NSString *dice4 = [dice randomizeValue];
            NSString *dice5 = [dice randomizeValue];
            
            gameController.diceArray = [NSMutableArray arrayWithObjects:dice1, dice2, dice3, dice4, dice5, nil];
            
            
            if ([userInput isEqual:@"roll"]) {
                
                NSLog(@"%@", [gameController getDiceString]);
            }
        }
        
    }
    return 0;
}
