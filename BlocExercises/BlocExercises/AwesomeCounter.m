//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    NSInteger lowNumber = number;
    NSInteger highNumber = otherNumber;
    while (lowNumber < highNumber){
        lowNumber = lowNumber + 1;
        NSLog(@"%i", lowNumber);
    }
    return @"";
}

@end
