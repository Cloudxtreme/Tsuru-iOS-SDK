//
//  TSRQuota.h
//  Tsuru
//
//  Created by Gustavo Barbosa on 5/22/14.
//  Copyright (c) 2014 globo.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TSRQuota : NSObject

@property (assign, nonatomic) NSUInteger items;
@property (assign, nonatomic) NSUInteger available;

@end
