//
//  MarysAppleHandlerTests.m
//  BlocExercises
//
//  Created by Aaron on 6/8/14.
//
//

#import <XCTest/XCTest.h>
#import "MarysAppleHandler.h"

@interface MarysAppleHandlerTests : XCTestCase

@property (nonatomic, strong) MarysAppleHandler *appleHandler;

@end

@implementation MarysAppleHandlerTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    self.appleHandler = [[MarysAppleHandler alloc] init];
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testThatMaryCannotPurchaseAnythingFor4Dollars {
    NSNumber *minimumPurchaseAmount = [NSNumber numberWithInt:5];
    NSNumber *maryMoney = [NSNumber numberWithInt:4];
    BOOL enoughMoney = (maryMoney >= minimumPurchaseAmount);
    if(enoughMoney){
        // this block will not be run
    } else {
        NSString *purchasableItem = @"get out of my store";
    
        XCTAssertEqualObjects(purchasableItem, @"get out of my store", @"If Mary has $4, she should be told to get out."); }
}

- (void)testThatMaryCanPurchaseGumFor5Dollars {
    NSNumber *minimumPurchaseAmount = [NSNumber numberWithInt:5];
    NSNumber *maryMoney = [NSNumber numberWithInt:5];
    NSString *purchasableItem;
    BOOL enoughMoney = (maryMoney >= minimumPurchaseAmount);
    if(enoughMoney == YES){
        purchasableItem = @"have some gum";
    } else {
        purchasableItem = @"get out of my store";
    XCTAssertEqualObjects(purchasableItem, @"have some gum", @"If Mary has $5, she should receive an offer to purchase gum.");
    }
}

- (void)testThatMaryCanPurchaseAnAppleFor6Dollars {
    NSNumber *minimumPurchaseAmount = [NSNumber numberWithInt:6];
    NSNumber *maryMoney = [NSNumber numberWithInt:6];
    NSString *purchasableItem;
    BOOL enoughMoney = (maryMoney >= minimumPurchaseAmount);
    if(enoughMoney == YES){
        purchasableItem = @"have an apple";
    } else {
        purchasableItem = @"get out of my store";

    XCTAssertEqualObjects(purchasableItem, @"have an apple", @"If Mary has $6, she should receive an offer to purchase an apple.");
    }
    }

- (void)testThatMaryCanPurchaseAnAppleComputerFor1000Dollars {
    NSNumber *minimumPurchaseAmount = [NSNumber numberWithInt:1000];
    NSNumber *maryMoney = [NSNumber numberWithInt:1000];
    NSString *purchasableItem;
    BOOL enoughMoney = (maryMoney >= minimumPurchaseAmount);
    if(enoughMoney == YES){
        purchasableItem = @"have an Apple computer";
    } else {
        purchasableItem = @"get out of my store";

    XCTAssertEqualObjects(purchasableItem, @"have an Apple computer", @"If Mary has $1000+, she should receive an offer to purchase an Apple computer.");

    }
}

- (void)testThatMaryCanPurchaseTheBigAppleFor1000000000Dollars {
    NSNumber *minimumPurchaseAmount = [NSNumber numberWithLong:1000000000];
    NSNumber *maryMoney = [NSNumber numberWithLong:1000000000];
    NSString *purchasableItem;
    BOOL enoughMoney = [maryMoney isEqualToValue: minimumPurchaseAmount];
    if(enoughMoney == YES){
        purchasableItem = @"have The Big Apple";
    } else {
        purchasableItem = @"get out of my store";

    XCTAssertEqualObjects(purchasableItem, @"have The Big Apple", @"If Mary has $1 billion, she should receive an offer to purchase New York City (known as The Big Apple).");
    }
}

- (void)testThatPriceOfDiscountedVodka {
    self.appleHandler.getsDiscount = YES;
    NSUInteger cost = self.appleHandler.dollarCostForAppleFlavoredVodka;
    BOOL message = [(int) cost isEqualtoValue:18] ? @"Discounted vodka should be $18." : @"Take a Hike";
    XCTAssertEqual(cost, 18, @"Discounted vodka should be $18.");
}

- (void)testThatPriceOfUndiscountedVodkaIs24Dollars {
    NSUInteger cost = [self.appleHandler dollarCostForAppleFlavoredVodka];
    XCTAssertEqual(cost, 24, @"Undiscounted vodka should be $24.");
}


@end
