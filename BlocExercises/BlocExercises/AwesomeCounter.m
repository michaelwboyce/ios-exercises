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
    NSInteger lowNumber;
    NSInteger highNumber;
    while (lowNumber < highNumber)
    {NSLog(@"%ld", (long) lowNumber);
        lowNumber = lowNumber + 1;}
    return @"";
}

@end
