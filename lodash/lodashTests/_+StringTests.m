//
//  _+StringTests.m
//  lodash
//
//  Created by Isra San Jose on 28/11/2015.
//  Copyright © 2015 MIT. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "_.h"

@interface __StringTests : XCTestCase

@end

@implementation __StringTests

- (void)testCapitalize
{
    XCTAssertTrue(_.capitalize(@"lodash"),@"Lodash");
    XCTAssertTrue(_.capitalize(@"lodash is awesome"),@"Lodash Is Awesome");
}

- (void)testLowercase
{
    XCTAssertTrue(_.lowercase(@"LoDAsh"),@"lodash");
}

- (void)testUppercase
{
    XCTAssertTrue(_.uppercase(@"lodash"),@"LODASH");
}

- (void)testPadLeft
{
    XCTAssertTrue(_.padLeft(@"lodash",5,@" "),@"     lodash");
}

- (void)testPadRight
{
    XCTAssertTrue(_.padRight(@"lodash",5,@" "),@"lodash     ");
}

- (void)testContain
{
    XCTAssertEqual(_.contain(@"lodash",@"da"),YES);
}

- (void)testReplace
{
    XCTAssertTrue(_.replace(@"lodash is awesome",@"lodash",@"underscore"),@"underscore is awesome");
}

- (void)testParseInt
{
    XCTAssertTrue(_.parseInt(123),@"123");
}

- (void)testRepeat
{
   XCTAssertTrue(_.repeat(@"123",3),@"123123123");
}

- (void)testTrim
{
    XCTAssertTrue(_.trim(@"  123      "),@"123");
}

- (void)testStrip
{
    XCTAssertTrue(_.strip(@"12345",@"3"),@"1245");
}

- (void)testSplit
{
    NSArray *res = _.split(@"1,2,3",@",");
    XCTAssertEqual(_.isArray(res),YES);
    NSLog(@"%@",res);
//    int index = 0;
//    for (NSString *str in res) {
//        XCTAssertTrue(str,[NSString stringWithFormat:@"%ld",(long)index++]);
//    }
}

- (void)testJoin
{
    NSString *res = _.join(@[@"1",@"2",@"3"],@",");
    XCTAssertTrue(res,@"1,2,3");
}

- (void)testStartsWith
{
    XCTAssertEqual(_.startsWith(@"lodash",@"lo"),YES);
}

- (void)testEndsWith
{
    XCTAssertEqual(_.endsWith(@"lodash",@"sh"),YES);
}

- (void)testEscape
{
    NSString *res = _.escape(@"lod&ash");
    XCTAssertTrue(res,@"lod&ampash");
}

- (void)testUnscape
{
    NSString *res = _.unescape(@"lod&ampash");
    XCTAssertTrue(res,@"lodash");
}

@end
