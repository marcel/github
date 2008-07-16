//
//  NewsFeedItemDetailViewController.h
//  GitHub
//
//  Created by Marcel Molina Jr on 7/16/08.
//  Copyright 2008 InfoEther. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NewsFeedItem.h"

@interface NewsFeedItemDetailViewController : UIViewController {
    NewsFeedItem *newsFeedItem;
    IBOutlet UILabel *authorLabel;
    IBOutlet UIWebView *content;
}
@property (nonatomic, retain) NewsFeedItem *newsFeedItem;
@property (nonatomic, retain) UILabel *authorLabel;
@property (nonatomic, retain) UIWebView *content;
@end
