//
//  GitHubAppDelegate.m
//  GitHub
//
//  Created by Marcel Molina Jr on 7/15/08.
//  Copyright InfoEther 2008. All rights reserved.
//

#import "GitHubAppDelegate.h"
#import "NewsFeedItem.h"

@implementation GitHubAppDelegate

@synthesize window;
@synthesize navigationController;
- (void)applicationDidFinishLaunching:(UIApplication *)application {
  [window addSubview:[navigationController view]];
	[window makeKeyAndVisible];
}


- (void)applicationWillTerminate:(UIApplication *)application {
	// Save data if appropriate
}


- (void)dealloc {
	[window release];
	[super dealloc];
}

@end
