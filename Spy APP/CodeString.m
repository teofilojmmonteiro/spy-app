//
//  CodeString.m
//  Spy APP
//
//  Created by Teófilo on 02/07/14.
//  Copyright (c) 2014 TeoProductions. All rights reserved.
//

#import "CodeString.h"
#import <CommonCrypto/CommonCryptor.h>

@implementation CodeString

-(id)initWithKey:(NSString*)keyCode{
    self = [super init];
    if (self) {
        _key   = keyCode;
    }
    return self;
}

-(NSString*)encryptString:(NSString*)text2code{
    //TODO Encrypt String base on key
    return 0;
}

-(NSString*)decryptData:(NSString*)text2decode{
    //TODO Decrypt String base on key
    return 0;
}

@end
