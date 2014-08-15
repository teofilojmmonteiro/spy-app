//
//  TPViewController.m
//  Spy APP
//
//  Created by Teófilo on 02/07/14.
//  Copyright (c) 2014 TeoProductions. All rights reserved.
//

#import "TPViewController.h"
#import "CodeString.h"
#import "AESCrypt.h"


@implementation TPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    if(_coderString){
        self.messageToEncrypt.text=_coderString.originalMessage;
        self.messageEncrypt.text = _coderString.codedMessage;
        [self.encryptButton setEnabled:NO];
    }
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)encrytText:(id)sender {
    if(!_coderString)
        _coderString = [[CodeString alloc] init];
    
    _coderString.keyUsed = @"777";
    _coderString.originalMessage = self.messageToEncrypt.text;

    _coderString.codedMessage = [AESCrypt encrypt:_coderString.originalMessage password:_coderString.keyUsed];
    self.messageEncrypt.text = _coderString.codedMessage;

    if ([[self delegate] respondsToSelector:@selector(addCodedMsg:)])
        [[self delegate] addCodedMsg:_coderString];
    
    [self.encryptButton setEnabled:NO];
}

@end
