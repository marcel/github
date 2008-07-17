//
//  RootViewController.m
//  GitHub
//
//  Created by Marcel Molina Jr on 7/15/08.
//  Copyright InfoEther 2008. All rights reserved.
//

#import "NewsFeedTableViewController.h"
#import "GitHubAppDelegate.h"
#import "NewsFeedItem.h"
#import "FeedParser.h"
#import "NewsFeedItemCell.h"
#import "NewsFeedItemDetailViewController.h"

@implementation NewsFeedTableViewController
@synthesize newsFeedItems;

- (void)viewDidLoad {
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
	return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return [newsFeedItems count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	
  //static NSString *cellIdentifier = @"NewsFeedItem";
    NewsFeedItemCell *cell;
	//UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    //if (cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"NewsFeedItemCell" 
                                                                owner:self 
                                                              options:nil] objectAtIndex:1];
		//cell = [[[UITableViewCell alloc] initWithFrame:CGRectZero reuseIdentifier:cellIdentifier] autorelease];
  //}
	
	NewsFeedItem *item;
    item = [newsFeedItems objectAtIndex:indexPath.row];
    cell.icon.image     = item.icon;
    cell.title.text     = item.title;
    cell.author.text    = item.author;
    cell.published.text = @"1m ago";
    
	return cell;
}


-       (void)tableView:(UITableView *)tableView 
didSelectRowAtIndexPath:(NSIndexPath *)indexPath 
{
    NSLog(@"Nav controller in didSelectRow is %@", self.navigationController);
    NewsFeedItemDetailViewController *newsFeedItemDetailViewController;
    newsFeedItemDetailViewController = [[NewsFeedItemDetailViewController alloc] 
                                        initWithNibName:@"NewsFeedItemDetailViewController" 
                                                 bundle:nil];
    NewsFeedItem *newsFeedItem;
    newsFeedItem = [newsFeedItems objectAtIndex:indexPath.row];
    newsFeedItemDetailViewController.newsFeedItem = newsFeedItem;
    [self.navigationController pushViewController:newsFeedItemDetailViewController 
                                    animated:YES];
    [newsFeedItem release];
    [newsFeedItemDetailViewController release];
}


/*
 Override if you support editing the list
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
		
	if (editingStyle == UITableViewCellEditingStyleDelete) {
		// Delete the row from the data source
		[tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:YES];
	}	
	if (editingStyle == UITableViewCellEditingStyleInsert) {
		// Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
	}	
}
*/


/*
 Override if you support conditional editing of the list
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
	// Return NO if you do not want the specified item to be editable.
	return YES;
}
*/


/*
 Override if you support rearranging the list
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/


/*
 Override if you support conditional rearranging of the list
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
	// Return NO if you do not want the item to be re-orderable.
	return YES;
}
 */ 


- (void)viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated {
	[super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
}

- (void)viewDidDisappear:(BOOL)animated {
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}


- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
	// Release anything that's not essential, such as cached data
}


- (void)dealloc {
    [newsFeedItems release];
	[super dealloc];
}
@end

