//
//  TSRAuthTestCase.m
//  Tsuru
//
//  Created by Gustavo Barbosa on 5/26/14.
//  Copyright (c) 2014 globo.com. All rights reserved.
//

#import "TSRRequestTestCase.h"

#import "OHHTTPStubs.h"

#import "TSRRequest.h"


@interface TSRAuthTestCase : TSRRequestTestCase
@end

@implementation TSRAuthTestCase

- (void)testLoginCallsCorrectApiPath
{
    [TSRRequest loginWithEmail:@"dummy@email.com" password:@"dummy-pass" success:^(NSURLRequest *request){
        NSString *expectedURLString = @"http://tsuru.io/users/dummy@email.com/tokens";
        XCTAssertEqualObjects([request.URL absoluteString], expectedURLString);
    } failure:nil];
}

- (void)testLoginCallsCorrectHTTPMethod
{
    [TSRRequest loginWithEmail:@"dummy@email.com" password:@"dummy-pass" success:^(NSURLRequest *request){
        XCTAssertEqualObjects(request.HTTPMethod, @"POST");
    } failure:nil];
}

- (void)testLoginCallsCorrectParams
{
    [TSRRequest loginWithEmail:@"dummy@email.com" password:@"dummy-pass" success:^(NSURLRequest *request){
        NSDictionary *json = [NSJSONSerialization JSONObjectWithData:[request HTTPBody]
                                                             options:NSJSONReadingAllowFragments
                                                               error:nil];
        XCTAssertEqualObjects(json, @{@"password":@"dummy-pass"});
    } failure:nil];
}

@end
