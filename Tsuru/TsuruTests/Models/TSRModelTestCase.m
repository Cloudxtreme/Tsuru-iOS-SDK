//
//  TSRModelTestCase.m
//  Tsuru
//
//  Created by Gustavo Barbosa on 5/23/14.
//  Copyright (c) 2014 globo.com. All rights reserved.
//

#import "TSRModelTestCase.h"

@implementation TSRModelTestCase

- (NSString *)jsonWithName:(NSString *)jsonName
{
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    NSString *path = [bundle pathForResource:jsonName ofType:@"json"];
    if (!path)
        return nil;
    
    NSData *data = [NSData dataWithContentsOfFile:path];
    return [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
}

@end
