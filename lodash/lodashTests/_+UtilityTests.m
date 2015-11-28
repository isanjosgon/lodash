//
//  _+UtilityTests.m
//  lodash
//
//  Created by Israel San Jose on 14/08/2015.
//  Copyright (c) 2015 MIT. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

#import "_.h"

@interface __UtilityTests : XCTestCase

@end

@implementation __UtilityTests

- (void)testTimes
{
    NSInteger __block count = 0;
    NSInteger times = 10;
    
    _.times(times,^(NSInteger n){
        count++;
    });
    
    XCTAssertEqual(times,count);
}

- (void)testRandom
{
    NSInteger max = 100;
    
    NSInteger res = _.random(100);
    
    XCTAssert(0 <= res <= max);
}

- (void)testRange
{
    NSInteger min = 90;
    NSInteger max = 100;
    
    NSInteger res = _.range(90,100);
    
    XCTAssert(min <= res <= max);
}

- (void)testUniqueId
{
    NSString *id1 = _.uniqueId(@"lodash");
    NSString *id2 = _.uniqueId(@"lodash");
    
    XCTAssertNotEqual(id1,id2);
}

@end
