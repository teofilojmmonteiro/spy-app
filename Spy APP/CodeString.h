//
//  CodeString.h
//  Spy APP
//
//  Created by Teófilo on 02/07/14.
//  Copyright (c) 2014 TeoProductions. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CodeString : NSObject<NSCoding>

@property (nonatomic) NSString *keyUsed;
@property (nonatomic) NSString *originalMessage;
@property (nonatomic) NSString *codedMessage;

@end
