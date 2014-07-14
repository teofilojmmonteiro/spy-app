//
//  TPViewController.h
//  Spy APP
//
//  Created by Teófilo on 02/07/14.
//  Copyright (c) 2014 TeoProductions. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TPViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *messageToEncrypt;
@property (weak, nonatomic) IBOutlet UITextView *messageEncrypt;
- (IBAction)encrytText:(id)sender;


@end
