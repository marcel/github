//
//  RootViewController.h
//  GitHub
//
//  Created by Marcel Molina Jr on 7/15/08.
//  Copyright InfoEther 2008. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewsFeedTableViewController : UITableViewController {
    IBOutlet UINavigationController *navigationController;
    NSMutableArray *newsFeedItems;
}
@property (nonatomic, retain) UINavigationController *navigationController;
@property (nonatomic, retain) NSMutableArray *newsFeedItems;

@end
