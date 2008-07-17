//
//  GitHubAppDelegate.m
//  GitHub
//
//  Created by Marcel Molina Jr on 7/15/08.
//  Copyright InfoEther 2008. All rights reserved.
//

#import "GitHubAppDelegate.h"
#import "NewsFeedItem.h"
#import "SplashScreenViewController.h"
#define PUBLIC_NEWS_FEED_URL @"http://github.com/news.atom"
#define USER_NEEDS_FEED_URL  @"http://github.com/%@.atom"

@implementation GitHubAppDelegate
@synthesize splashScreenViewController;
@synthesize window;
- (void)applicationDidFinishLaunching:(UIApplication *)application 
{
    [NSThread detachNewThreadSelector:@selector(startLoadingNewsFeed) 
                             toTarget:self 
                           withObject:nil];
    
    [window addSubview:[splashScreenViewController view]];
    [window makeKeyAndVisible];
}

- (void)startLoadingNewsFeed 
{
    NSAutoreleasePool* autoreleasePool = [[NSAutoreleasePool alloc] init];
    
    [FeedController loadFeed:[self feedURL] 
                    delegate:self];
    
    [autoreleasePool release];
}

-   (void)parser:(FeedParser *)parser 
didFinishLoading:(NSURL *)feedURL 
          result:(NSMutableArray *)result
{
    NSLog(@"Feed finished loadeding");
}

- (BOOL)isLoggedIn 
{
    return NO;
}

- (NSURL *)feedURL 
{
    if (_feedURL == nil) {
        NSString *url;
        if ([self isLoggedIn]) {
            url = [NSString stringWithFormat:USER_NEEDS_FEED_URL, [self loggedInUser]];
        } else {
            url = PUBLIC_NEWS_FEED_URL;
        }
        _feedURL = [[NSURL URLWithString:url] retain];
        [url release];
    }
    return _feedURL;
}

- (NSString *)loggedInUser 
{
    // XXX stubbed for now
    return @"marcel";
}

- (void)applicationWillTerminate:(UIApplication *)application {
	// Save data if appropriate
}


- (void)dealloc 
{
    [splashScreenViewController release];
	[window release];
	[super dealloc];
}

@end
