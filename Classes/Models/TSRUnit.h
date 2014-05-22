//
//  TSRUnit.h
//  Tsuru
//
//  Created by Gustavo Barbosa on 5/22/14.
//  Copyright (c) 2014 globo.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TSRUnit : NSObject

@property (copy, nonatomic) NSString *name;
@property (copy, nonatomic) NSString *type;
@property (assign, nonatomic) NSUInteger *machine;
@property (copy, nonatomic) NSString *instanceId;
@property (copy, nonatomic) NSString *ip;
@property (copy, nonatomic) NSString *state;

@end
