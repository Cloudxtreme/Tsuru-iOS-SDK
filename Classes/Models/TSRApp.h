//
//  TSRApp.h
//  Tsuru
//
//  Created by Gustavo Barbosa on 5/22/14.
//  Copyright (c) 2014 globo.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TSRApp : NSObject

@property (copy, nonatomic) NSString *cname;
@property (assign, nonatomic) NSUInteger deploys;
@property (copy, nonatomic) NSString *ip;
@property (copy, nonatomic) NSString *memory;
@property (copy, nonatomic) NSString *name;
@property (copy, nonatomic) NSString *owner;
@property (copy, nonatomic) NSString *platform;
@property (assign, nonatomic, getter = isReady) BOOL ready;
@property (copy, nonatomic) NSString *repository;
@property (copy, nonatomic) NSString *swap;
@property (copy, nonatomic) NSArray *teams;
@property (copy, nonatomic) NSArray *units;

@end
