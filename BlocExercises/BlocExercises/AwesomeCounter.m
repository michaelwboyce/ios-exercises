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
    NSString *mystring = [NSString string];
    while (lowNumber < highNumber){
        lowNumber = lowNumber + 1;
        mystring = [NSString stringWithFormat: @"%i", lowNumber];
    
    }
    return mystring;
}

@end
