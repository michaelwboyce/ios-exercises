//
//  StringCheeseTests.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import <XCTest/XCTest.h>
#import "StringCheese.h"

@interface StringCheeseTests : XCTestCase

@property (nonatomic, strong) StringCheese *stringCheese;

@end

@implementation StringCheeseTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.stringCheese = [[StringCheese alloc] init];
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testThatCheeseFavoritingWorks {
    NSString *ricottaString = @"ricotta";
    NSString *favoriteCheese = [NSString stringWithFormat:@"My favorite cheese is %@.", ricottaString];
    
   XCTAssertEqualObjects(favoriteCheese, @"My favorite cheese is ricotta.", @"Incorrect favorite cheese string returned.");
}

- (void)testThatRemovingCheeseSuffixWorks {
    NSString *fullCheeseString = @"Monterey Jack cheese";
    NSString *cheeseNameOnly;
    cheeseNameOnly = [fullCheeseString substringWithRange:NSMakeRange(0, 13)];
    XCTAssertEqualObjects(cheeseNameOnly, @"Monterey Jack", @"Monterey Jack should be returned.");
}

- (void)testThatRemovingCheeseSuffixWorksWithUppercaseC {
    NSString *fullCheeseString = @"Colby Cheese";
    NSString *cheeseNameOnly;
    cheeseNameOnly = [fullCheeseString substringWithRange:NSMakeRange(0, 5)];
    XCTAssertEqualObjects(cheeseNameOnly, @"Colby", @"Colby should be returned.");
}

- (void)testThatRemovingCheeseSuffixWorksWithNoCheeseAtAll {
    NSString *fullCheeseString = @"Gouda";
    NSString *cheeseNameOnly;
    cheeseNameOnly = [fullCheeseString substringWithRange:NSMakeRange(0, 5)];
    XCTAssertEqualObjects(cheeseNameOnly, @"Gouda", @"Gouda should be returned.");
}

- (void)testThatTurningNumbersIntoStringsWorks {
    NSString *numberOfCheesesString = [NSString stringWithFormat:@"%d cheeses", 7];
    XCTAssertEqualObjects(numberOfCheesesString, @"7 cheeses", @"7 cheeses should be returned");
}

- (void)testThatTurningNumberOneIntoSingularCheeseStringWorks {
    NSString *numberOfCheesesString = [NSString stringWithFormat:@"%d cheese", 1];
    XCTAssertEqualObjects(numberOfCheesesString, @"1 cheese", @"1 cheese should be returned");
}

@end
