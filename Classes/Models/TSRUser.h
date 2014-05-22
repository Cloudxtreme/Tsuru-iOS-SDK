//
//  TSRUser.h
//  Tsuru
//
//  Created by Gustavo Barbosa on 5/22/14.
//  Copyright (c) 2014 globo.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TSRUser : NSObject

@property (copy, nonatomic) NSString *email;
@property (copy, nonatomic) NSString *password;

@end
