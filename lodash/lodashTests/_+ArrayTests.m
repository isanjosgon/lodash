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
    int index = 0;
    for (NSNumber *number in mapped) {
        XCTAssertEqual([number integerValue],[array[index++] integerValue] * 3);
    }
}

- (void)testIndexOf
{
    NSArray *array = @[@1,@2,@3,@4,@5];
    NSInteger index = _.indexOf(array,@3,0);
    XCTAssertEqual(2,index);
    index = _.indexOf(array,@7,0);
    XCTAssertEqual(NSNotFound,index);
}

- (void)testSlice
{
    NSArray *array = @[@1,@2,@3,@4,@5];
    NSArray *sliced = _.slice(array,1,3);
    XCTAssertEqual(3,sliced.count);
    NSInteger i = [sliced[0] integerValue];
    for (NSNumber *number in sliced) {
        XCTAssertEqual(i++,[number integerValue]);
    }
}

- (void)testEach
{
    NSArray *array = @[@1,@2];
    __block NSInteger num = 0;
    _.each(array,^(id obj,NSInteger index) {
        num += [obj integerValue];
    });
    XCTAssertEqual(num,_.sum(array));
}

@end
