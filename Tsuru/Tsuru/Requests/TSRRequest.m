//
//  TSRRequest.m
//  Tsuru
//
//  Created by Gustavo Barbosa on 5/26/14.
//  Copyright (c) 2014 globo.com. All rights reserved.
//

#import "TSRRequest.h"

@implementation TSRRequest

+ (void)loginWithEmail:(NSString *)email
              password:(NSString *)password
               success:(void(^)(NSURLRequest *request))success
               failure:(void(^)())failure
{
    NSString *urlString = [NSString stringWithFormat:@"http://tsuru.io/users/%@/tokens", email];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *mutableRequest = [NSMutableURLRequest requestWithURL:url];
    [mutableRequest setHTTPMethod:@"POST"];
    
    NSDictionary *bodyJSON = @{@"password":password};
    NSData *bodyData = [NSJSONSerialization dataWithJSONObject:bodyJSON
                                                       options:0
                                                         error:nil];
    [mutableRequest setHTTPBody:bodyData];
    
    success([mutableRequest copy]);
}

@end
