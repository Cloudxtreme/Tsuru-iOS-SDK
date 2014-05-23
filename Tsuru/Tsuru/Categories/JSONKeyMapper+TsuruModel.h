//
//  JSONKeyMapper+TsuruModel.h
//  Tsuru
//
//  Created by Gustavo Barbosa on 5/23/14.
//  Copyright (c) 2014 globo.com. All rights reserved.
//

#import "JSONKeyMapper.h"

@interface JSONKeyMapper (TsuruModel)

+ (JSONKeyMapper *)mapperFromPascalCaseToCamelCase;

@end
