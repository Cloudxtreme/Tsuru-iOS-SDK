//
//  TSRUnit.m
//  Tsuru
//
//  Created by Gustavo Barbosa on 5/22/14.
//  Copyright (c) 2014 globo.com. All rights reserved.
//

#import "TSRUnit.h"
#import "JSONKeyMapper+TsuruModel.h"

@implementation TSRUnit

+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
    return YES;
}

+ (JSONKeyMapper *)keyMapper
{
    return [JSONKeyMapper mapperFromPascalCaseToCamelCase];
}

@end
