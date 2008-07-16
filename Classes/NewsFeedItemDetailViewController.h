//
//  NewsFeedItemDetailViewController.h
//  GitHub
//
//  Created by Marcel Molina Jr on 7/16/08.
//  Copyright 2008 InfoEther. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NewsFeedItem.h"

@interface NewsFeedItemDetailViewController : UITableViewController {
    NewsFeedItem *newsFeedItem;
}
@property (nonatomic, retain) NewsFeedItem *newsFeedItem;
@end
