//
//  InputHandler.m
//  Threelow
//
//  Created by NICE on 2018-08-01.
//  Copyright © 2018 NICE. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

+ (NSString*)getInput {
    char inputNum[255];
    
    printf("> ");
    fgets(inputNum, 255, stdin);
    
    NSString *inputAns = [NSString stringWithCString:inputNum encoding:NSUTF8StringEncoding];
    
    inputAns = [inputAns stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    return inputAns;
}

@end
