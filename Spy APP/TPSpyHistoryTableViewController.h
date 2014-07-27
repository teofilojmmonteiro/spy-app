//
//  TPSpyHistoryTableViewController.h
//  Spy APP
//
//  Created by Teófilo on 20/07/14.
//  Copyright (c) 2014 TeoProductions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TPViewController.h"

@interface TPSpyHistoryTableViewController : UITableViewController<TPViewControllerDelegate>

@property (nonatomic) NSMutableArray* codedMsgs;

@end
