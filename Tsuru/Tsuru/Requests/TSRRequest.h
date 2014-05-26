//
//  TSRRequest.h
//  Tsuru
//
//  Created by Gustavo Barbosa on 5/26/14.
//  Copyright (c) 2014 globo.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TSRRequest : NSObject

+ (void)loginWithEmail:(NSString *)email
              password:(NSString *)password
               success:(void(^)(NSURLRequest *request))success
               failure:(void(^)())failure;

@end
