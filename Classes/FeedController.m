//
//  FeedController.m
//  GitHub
//
//  Created by Marcel Molina Jr on 7/16/08.
//  Copyright 2008 InfoEther. All rights reserved.
//

#import "FeedController.h"
@implementation FeedController
@synthesize parser;
@synthesize delegate;

+ (FeedController *)loadFeed:(NSURL *)feedURL 
                     delegate:(id<FeedControllerDelegate>)theDelegate
{
    FeedController *controller = [[self alloc] initWithFeedURL:feedURL 
                                         delegate:theDelegate];
    [controller load];
    return [controller autorelease];
}
- (id)initWithFeedURL:(NSURL *)feedURL 
             delegate:(id<FeedControllerDelegate>)theDelegate 
{
    if (self = [super init]) {
        self.delegate = theDelegate;
        self.parser = [[FeedParser alloc] initWithFeedURL:feedURL];
    }
    return self;
}

- (void)load
{
    [parser parse];
    [delegate feedController:self
            didFinishLoading:parser.url 
                      result:parser.newsFeedItems];
}
@end
