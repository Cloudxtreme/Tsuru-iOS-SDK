//
//  TSRApiTestCase.m
//  Tsuru
//
//  Created by Gustavo Barbosa on 5/27/14.
//  Copyright (c) 2014 globo.com. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "TSRApi.h"

@interface TSRApiTestCase : XCTestCase
@end

@implementation TSRApiTestCase

- (void)testTsuruApiIsASingleton
{
    TSRApi *api1 = [[TSRApi alloc] init];
    TSRApi *api2 = [[TSRApi alloc] init];
    XCTAssertEqual(api1, api2);
}

- (void)testClassMethodInitializer
{
    TSRApi *api1 = [TSRApi api];
    TSRApi *api2 = [[TSRApi alloc] init];
    XCTAssertEqual(api1, api2);
}

@end
