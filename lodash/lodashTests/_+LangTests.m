//
//  _+LangTests.m
//  lodash
//
//  Created by Isra San Jose on 28/11/2015.
//  Copyright © 2015 MIT. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "_.h"

@interface __LangTests : XCTestCase

@end

@implementation __LangTests

- (void)testIsArray
{
    XCTAssertEqual(_.isArray(@[@1,@2]),YES);
}

- (void)testIsNumber
{
    XCTAssertEqual(_.isNumber(@1),YES);
}

- (void)testIsString
{
    XCTAssertEqual(_.isString(@"lodash"),YES);
}

- (void)testIsNull
{
    XCTAssertEqual(_.isNull([NSNull null]),YES);
    XCTAssertEqual(_.isNull(@"lodash"),NO);
}

- (void)testIsDictionary
{
    XCTAssertEqual(_.isDictionary(@{@"key":@1}),YES);
}

- (void)testIsDate
{
    XCTAssertEqual(_.isDate([NSDate date]),YES);
}

- (void)testIsData
{
    NSString *str = @"lodash";
    NSData *data = [str dataUsingEncoding:NSUTF8StringEncoding];
    XCTAssertEqual(_.isData(data),YES);
}

- (void)testIsSet
{
    NSSet *set = [NSSet setWithObjects:@1,@2,nil];
    XCTAssertEqual(_.isSet(set),YES);
}

- (void)testIsEmpty
{
    XCTAssertEqual(_.isEmpty(@[]),YES);
    XCTAssertEqual(_.isEmpty(@[@1,@2]),NO);
}

- (void)testIsEqual
{
    XCTAssertEqual(_.isEqual(@"1",@"2"),NO);
    XCTAssertEqual(_.isEqual(@[@1,@2],@[@1,@2]),YES);
    XCTAssertEqual(_.isEqual(@{@"key":@1},@{@"key":@2}),NO);
}

- (void)testToArray
{
    NSSet *set = [NSSet setWithObjects:@1,nil];
    XCTAssertEqual(_.isArray(_.toArray(set)),YES);
}

- (void)testGT
{
    XCTAssertEqual(_.gt(4,3),YES);
}

- (void)testGTE
{
    XCTAssertEqual(_.gte(4,4),YES);
}

- (void)testLT
{
    XCTAssertEqual(_.lt(3,4),YES);
}

- (void)testLTE
{
    XCTAssertEqual(_.lte(4,4),YES);
}

@end
