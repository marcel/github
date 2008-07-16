//
//  RootViewController.h
//  GitHub
//
//  Created by Marcel Molina Jr on 7/15/08.
//  Copyright InfoEther 2008. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewsFeedTableViewController : UITableViewController {
    NSMutableArray *newsFeedItems;
    NSURL *_feedURL;
}
@property (nonatomic, retain) NSMutableArray *newsFeedItems;
- (BOOL)isLoggedIn;
- (NSURL *)feedURL;
- (NSString *)loggedInUser;
@end
