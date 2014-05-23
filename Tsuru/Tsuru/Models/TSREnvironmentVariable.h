//
//  TSREnvironmentVariable.h
//  Tsuru
//
//  Created by Gustavo Barbosa on 5/22/14.
//  Copyright (c) 2014 globo.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSONModel.h"

@interface TSREnvironmentVariable : JSONModel

@property (copy, nonatomic) NSString *name;
@property (copy, nonatomic) NSString *value;
@property (assign, nonatomic, getter = isPublic) BOOL *public;

@end
