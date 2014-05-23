//
//  JSONKeyMapper+TsuruModel.m
//  Tsuru
//
//  Created by Gustavo Barbosa on 5/23/14.
//  Copyright (c) 2014 globo.com. All rights reserved.
//

#import "JSONKeyMapper+TsuruModel.h"

@implementation JSONKeyMapper (TsuruModel)

+ (JSONKeyMapper *)mapperFromPascalCaseToCamelCase
{
    JSONModelKeyMapBlock toModel = ^ NSString* (NSString* keyName) {
        if ([keyName length] == 0)
            return @"";
        
        NSString *firstLetter = [keyName substringToIndex:1];
        return [keyName stringByReplacingCharactersInRange:NSMakeRange(0, 1)
                                                withString:[firstLetter lowercaseString]];
    };
    
    JSONModelKeyMapBlock toJSON = ^ NSString* (NSString* keyName) {
        if ([keyName length] == 0)
            return @"";
        
        NSString *firstLetter = [keyName substringToIndex:1];
        return [keyName stringByReplacingCharactersInRange:NSMakeRange(0, 1)
                                                withString:[firstLetter uppercaseString]];
    };
    
    return [[JSONKeyMapper alloc] initWithJSONToModelBlock:toModel
                                          modelToJSONBlock:toJSON];
}


@end
