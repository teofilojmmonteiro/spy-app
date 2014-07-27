//
//  TPSpyHistoryTableViewController.m
//  Spy APP
//
//  Created by Teófilo on 20/07/14.
//  Copyright (c) 2014 TeoProductions. All rights reserved.
//

#import "TPSpyHistoryTableViewController.h"

@interface TPSpyHistoryTableViewController ()

@end

@implementation TPSpyHistoryTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    [self loadArrayFromUD];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    return [_codedMsgs count];
}

-(void) addCodedMsg:(CodeString *)message{
    [_codedMsgs addObject:message];
    [self saveArrayToUD];
}

-(void) loadArrayFromUD{
    
    _codedMsgs = [[NSMutableArray alloc] init];
    
    NSData* codedMsgsData = [[NSUserDefaults standardUserDefaults] objectForKey:@"TPCodedMsgs"];
    
    if(codedMsgsData){
        _codedMsgs = [NSKeyedUnarchiver unarchiveObjectWithData:codedMsgsData];
    }
    
    if (!_codedMsgs)
        _codedMsgs = [[NSMutableArray alloc] init];
}


-(void) saveArrayToUD {
    
    NSData *codedMsgsData = [NSKeyedArchiver archivedDataWithRootObject:_codedMsgs];
    [[NSUserDefaults standardUserDefaults] setObject:codedMsgsData forKey:@"TPCodedMsgs"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    [self.tableView reloadData];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString* identifier = @"codeCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];
    
    
    if(!cell){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    CodeString *message = _codedMsgs[indexPath.row];
    
    cell.textLabel.text = message.originalMessage;
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    TPViewController *details = segue.destinationViewController;
    
    details.delegate = self;
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
