//
//  NewsFeedItemDetailViewController.m
//  GitHub
//
//  Created by Marcel Molina Jr on 7/16/08.
//  Copyright 2008 InfoEther. All rights reserved.
//

#import "NewsFeedItemDetailViewController.h"


@implementation NewsFeedItemDetailViewController
@synthesize newsFeedItem;
@synthesize authorLabel;
@synthesize content;

- (void)viewDidLoad {
    self.authorLabel.text = newsFeedItem.author;
    [content loadHTMLString:newsFeedItem.content baseURL:nil];
}


- (void)dealloc {
    [newsFeedItem release];
    [authorLabel release];
    [content release];
	[super dealloc];
}


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

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
}


@end

