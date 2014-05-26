//
//  TSRRequestTestCase.m
//  Tsuru
//
//  Created by Gustavo Barbosa on 5/26/14.
//  Copyright (c) 2014 globo.com. All rights reserved.
//

#import "TSRRequestTestCase.h"
#import "OHHTTPStubs.h"

@implementation TSRRequestTestCase

- (void)setUp
{
    [super setUp];
}

- (void)tearDown
{
    [OHHTTPStubs removeAllStubs];
    [super tearDown];
}

@end
