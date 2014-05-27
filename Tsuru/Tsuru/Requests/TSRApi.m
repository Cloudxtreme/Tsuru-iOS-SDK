//
//  TSRApi.m
//  Tsuru
//
//  Created by Gustavo Barbosa on 5/27/14.
//  Copyright (c) 2014 globo.com. All rights reserved.
//

#import "TSRApi.h"

@implementation TSRApi

#pragma mark - Initializers

- (instancetype)init
{
    static TSRApi *sharedApi = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedApi = [super init];
    });
    return sharedApi;
}

#pragma mark - Class method initializers

+ (instancetype)api
{
    return [[TSRApi alloc] init];
}

@end
