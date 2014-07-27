//
//  CodeString.m
//  Spy APP
//
//  Created by Teófilo on 02/07/14.
//  Copyright (c) 2014 TeoProductions. All rights reserved.
//

#import "CodeString.h"
#import <CommonCrypto/CommonCryptor.h>

static NSString* keyInUse = @"TPKeyInUse";
static NSString* originalMsgKey = @"TPOriginalMsg";
static NSString* codedMsgKey = @"TPCodedMsg";

@implementation CodeString

-(id) initWithCoder:(NSCoder *)aDecoder{
    self = [super init];
    
    self.keyUsed = [aDecoder decodeObjectForKey:keyInUse];
    self.originalMessage = [aDecoder decodeObjectForKey:originalMsgKey];
    self.codedMessage = [aDecoder decodeObjectForKey:codedMsgKey];
    
    return self;
}

-(void) encodeWithCoder:(NSCoder *)aCoder{
    
    [aCoder encodeObject:self.keyUsed forKey:keyInUse];
    [aCoder encodeObject:self.originalMessage forKey:originalMsgKey];
    [aCoder encodeObject:self.codedMessage forKey:codedMsgKey];
    
}

@end
