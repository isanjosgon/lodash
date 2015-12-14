//
//  _+MathTests.m
//  lodash
//
//  Created by Israel San Jose on 14/08/2015.
//  Copyright (c) 2015 MIT. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

#import "_.h"

@interface __MathTests : XCTestCase

@end

@implementation __MathTests

- (void)testAdd
{
    NSInteger a = 6;
    NSInteger b = 10;

    XCTAssertEqual(a + b,_.add(a,b));
}

- (void)testCeil
{
    XCTAssertEqual(_.ceil(4.2),5);
}

- (void)testFloor
{
    XCTAssertEqual(_.floor(4.2),4);
}

- (void)testMax
{
    XCTAssertEqual(_.max(2,3),3);
}

- (void)testMin
{
    XCTAssertEqual(_.min(2,3),2);
}

- (void)testRound
{
    XCTAssertEqual(_.round(4.6),5);
}

- (void)testAbs
{
    XCTAssertEqual(_.abs(-2),2);
}

- (void)testPower
{
    XCTAssertEqual(_.pow(2,2),4);
}

- (void)testSqrt
{
    XCTAssertEqual(_.sqrt(4),2);
}

- (void)testSum
{
    NSArray *numbers = @[@1,@2,@3,@4,@"abc"];
    
    XCTAssertEqual(10,_.sum(numbers));
}

@end
