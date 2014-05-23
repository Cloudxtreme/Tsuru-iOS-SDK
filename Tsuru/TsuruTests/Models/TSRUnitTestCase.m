//
//  TSRUnitTestCase.m
//  Tsuru
//
//  Created by Gustavo Barbosa on 5/23/14.
//  Copyright (c) 2014 globo.com. All rights reserved.
//

#import "TSRModelTestCase.h"
#import "TSRUnit.h"

@interface TSRUnitTestCase : TSRModelTestCase
{
    TSRUnit *unit;
}
@end


@implementation TSRUnitTestCase

- (void)setUp
{
    [super setUp];
    unit = [[TSRUnit alloc] initWithString:[self jsonWithName:@"unit"] error:nil];
}

- (void)tearDown
{
    unit = nil;
    [super tearDown];
}

- (void)testModelMapping
{
    XCTAssertEqualObjects(unit.name, @"unit_name");
    XCTAssertEqualObjects(unit.type, @"unit_type");
    XCTAssertEqual(unit.machine, 0);
    XCTAssertEqualObjects(unit.instanceId, @"123");
    XCTAssertEqualObjects(unit.ip, @"127.0.0.1");
    XCTAssertEqualObjects(unit.state, @"unit_state");
}

@end
