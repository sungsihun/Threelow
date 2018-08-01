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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        
        while (gameOn) {
            InputHandler *inputHandler = [[InputHandler alloc] init];
            Dice *dice = [[Dice alloc] init];
            
            NSLog(@"Enter: ");
            NSString *userInput = [inputHandler getInput];
            
            if ([userInput isEqual:@"roll"]) {
                
                NSLog(@"%@", [dice randomizeValue]);
            }
        }
        
    }
    return 0;
}
