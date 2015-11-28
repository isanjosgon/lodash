//
//  _+ArrayTests.m
//  lodash
//
//  Created by Isra San Jose on 24/11/2015.
//  Copyright © 2015 MIT. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "_.h"

@interface __ArrayTests : XCTestCase

@end

@implementation __ArrayTests

- (void)testFlatten
{
    NSArray *array = @[@1,@[@2,@3,@[@4]]];
    NSArray *flattened = _.flatten(array);
    NSLog(@"FLATTEN value: %@",flattened);
    for (id obj in flattened) {
        XCTAssertEqual(_.isArray(obj),NO);
    }
}

- (void)testMap
{
    NSArray *array = @[@1,@2];
    NSArray *mapped = _.map(array,^id(id obj,NSInteger index) {
        NSInteger value = [obj integerValue] * 3;
        return [NSNumber numberWithInteger:value];
    });
    NSLog(@"MAP value: %@",mapped);
    int index = 0;
    for (NSNumber *number in mapped) {
        XCTAssertEqual([number integerValue],[array[index++] integerValue] * 3);
    }
}

@end
