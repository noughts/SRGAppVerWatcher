//
//  SRGVersionRecord.m
//  SRGAppVerWatcher
//
//  Created by nori0620 on 2014/05/16.
//  Copyright (c) 2014年 soragoto. All rights reserved.
//

#import "SRGVersionRecord.h"

@implementation SRGVersionRecord

+ (instancetype)recordWithVersion:(NSString *)version versionString:(NSString*)versionString date:(NSDate *)date {
    return [[[self class] alloc] initWithVersion:version versionString:versionString date:date];
}

- (instancetype)initWithVersion:(NSString *)version versionString:(NSString*)versionString date:(NSDate *)date {
    if( self = [super init]){
        _version = version;
		_versionString = versionString;
        _date    = date;
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)decoder {
    if( [self init]){
        _version = [decoder decodeObjectForKey:@"version"];
		_versionString = [decoder decodeObjectForKey:@"versionString"];
        _date    = [decoder decodeObjectForKey:@"date"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
    [coder encodeObject:_version forKey:@"version"];
	[coder encodeObject:_versionString forKey:@"versionString"];
    [coder encodeObject:_date    forKey:@"date"];
}

- (BOOL)isEqualVersionTo:(NSString *)version {
    return [_version isEqualToString:version];
}

@end
