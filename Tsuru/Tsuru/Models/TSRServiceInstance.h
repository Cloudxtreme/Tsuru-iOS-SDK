//
//  TSRServiceInstance.h
//  Tsuru
//
//  Created by Gustavo Barbosa on 5/22/14.
//  Copyright (c) 2014 globo.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@class TSRService;

@interface TSRServiceInstance : NSObject

@property (strong, nonatomic) TSRService *service;
@property (copy, nonatomic) NSString *name;
@property (copy, nonatomic) NSArray *teams;
@property (copy, nonatomic) NSArray *apps;

@end
