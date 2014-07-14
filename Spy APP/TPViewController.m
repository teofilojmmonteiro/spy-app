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
    CodeString *coderString = [[CodeString alloc]initWithKey:@"100"];
    _messageEncrypt.text = [coderString encryptString:_messageToEncrypt.text];
}

@end
