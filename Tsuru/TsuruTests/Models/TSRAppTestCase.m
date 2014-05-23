//
//  TSRAppTestCase.m
//  Tsuru
//
//  Created by Gustavo Barbosa on 5/23/14.
//  Copyright (c) 2014 globo.com. All rights reserved.
//

#import "TSRModelTestCase.h"
#import "TSRApp.h"

@interface TSRAppTestCase : TSRModelTestCase
{
    TSRApp *app;
}
@end

@implementation TSRAppTestCase

- (void)setUp
{
    [super setUp];
    app = [[TSRApp alloc] initWithString:[self jsonWithName:@"app"] error:nil];
}

- (void)tearDown
{
    app = nil;
    [super tearDown];
}

- (void)testModelMapping
{
    XCTAssertEqualObjects(app.cname, @"");
    XCTAssertEqual(app.deploys, 0);
    XCTAssertEqualObjects(app.ip, @"127.0.0.1");
    XCTAssertEqualObjects(app.memory, @"512");
    XCTAssertEqualObjects(app.name, @"india");
    XCTAssertEqualObjects(app.owner, @"mobileapp@corp.globo.com");
    XCTAssertEqualObjects(app.platform, @"python");
    XCTAssert([app isReady]);
    XCTAssertEqualObjects(app.repository, @"tsuru-git@git.tsuru.globoi.com:india.git");
    XCTAssertEqualObjects(app.swap, @"1024");
    XCTAssertEqual([app.units count], 1);
}

@end
