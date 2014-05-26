//
//  TSRTeamTestCase.m
//  Tsuru
//
//  Created by Gustavo Barbosa on 5/26/14.
//  Copyright (c) 2014 globo.com. All rights reserved.
//

#import "TSRModelTestCase.h"
#import "TSRTeam.h"

@interface TSRTeamTestCase : TSRModelTestCase
{
    TSRTeam *team;
}
@end


@implementation TSRTeamTestCase

- (void)setUp
{
    [super setUp];
    NSError *error;
    team = [[TSRTeam alloc] initWithString:[self jsonWithName:@"team"] error:&error];
}

- (void)tearDown
{
    team = nil;
    [super tearDown];
}

- (void)testExample
{
    XCTAssertEqualObjects(team.name, @"mobile-app");
}

@end
