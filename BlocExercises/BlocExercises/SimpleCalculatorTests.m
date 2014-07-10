//
//  SimpleCalculatorTests.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import <XCTest/XCTest.h>
#import "SimpleCalculator.h"

@interface SimpleCalculatorTests : XCTestCase

@property (nonatomic, strong) SimpleCalculator *calculator;

@end

@implementation SimpleCalculatorTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    self.calculator = [[SimpleCalculator alloc] init];
}

- (void) testThatIncrementsWork {
    NSInteger sourceNumber = 17;
    NSInteger resultNumber = sourceNumber +1;
    XCTAssertTrue(resultNumber == 18, @"17 + 1 = 18");
}

- (void) testThatAdditionWorks {
    NSInteger firstOperand = 17;
    NSInteger secondOperand = 3;
    NSInteger resultNumber = firstOperand+ secondOperand;
    XCTAssertTrue(resultNumber == 20, @"17 + 3 = 20");
}

- (void) testThatDivisionWorks {
    NSInteger dividend = 15;
    NSInteger divisor = 5;
    
    NSInteger remainder = dividend%divisor;
    
    XCTAssertEqual(remainder, 0, @"15 is evenly divisible by 5, so the remainder should be 0.");
    
    NSInteger divisor2 = 4;
    NSInteger remainder2 = remainder%divisor2;
    
    XCTAssertEqual(remainder2, 3, @"15 is not evenly divisible by 4; the remainder should be 3.");
}


- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

@end
