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

- (void)testSum
{
    NSArray *numbers = @[@1,@2,@3,@4,@"abc"];
    
    XCTAssertEqual(10,_.sum(numbers));
}

@end
