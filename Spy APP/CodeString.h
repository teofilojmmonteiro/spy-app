//
//  CodeString.h
//  Spy APP
//
//  Created by Teófilo on 02/07/14.
//  Copyright (c) 2014 TeoProductions. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CodeString : NSObject
@property (nonatomic) NSString *key;


-(id)initWithKey:(NSString*)keyCode;
-(NSString*)encryptString:(NSString*)text2code;
-(NSString*)decryptData:(NSString*)text2decode;
@end
