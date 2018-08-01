//
//  Dice.h
//  Threelow
//
//  Created by NICE on 2018-08-01.
//  Copyright © 2018 NICE. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property (nonatomic) int currentValue;
@property (nonatomic) NSArray *diceValue;

- (NSString *)randomizeValue;

@end
