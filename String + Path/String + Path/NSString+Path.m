//
//  NSString+Path.m
//  String + Path
//
//  Created by Joanna on 15/3/18.
//  Copyright (c) 2015年 Joanna. All rights reserved.
//

#import "NSString+Path.h"

@implementation NSString (Path)

- (NSString *) ducomentPath
{
    NSString *ducoment = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    
    return [ducoment stringByAppendingPathComponent:[self lastPathComponent]];
    
}

- (NSString *) cachePath
{
    
    NSString *cache = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject];
    
    return [cache stringByAppendingPathComponent:[self lastPathComponent]];
}

- (NSString *) tempPath
{
    NSString *temp = NSTemporaryDirectory();
    
    return [temp stringByAppendingPathComponent:[self lastPathComponent]];
}

@end
