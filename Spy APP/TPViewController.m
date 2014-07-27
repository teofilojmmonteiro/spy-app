//
//  TPViewController.m
//  Spy APP
//
//  Created by Teófilo on 02/07/14.
//  Copyright (c) 2014 TeoProductions. All rights reserved.
//

#import "TPViewController.h"
#import "CodeString.h"



@implementation TPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)encrytText:(id)sender {
    
    CodeString *coderString = [[CodeString alloc] init];
    
    coderString.keyUsed = @"";
    coderString.originalMessage = self.messageToEncrypt.text;
    //TODO
    coderString.codedMessage = coderString.originalMessage;
    self.messageEncrypt.text = coderString.codedMessage;

    if ([[self delegate] respondsToSelector:@selector(addCodedMsg:)])
        [[self delegate] addCodedMsg:coderString];
}

@end
