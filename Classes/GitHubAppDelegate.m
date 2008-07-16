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

@implementation GitHubAppDelegate

@synthesize window;
@synthesize navigationController;
- (void)applicationDidFinishLaunching:(UIApplication *)application {
    SplashScreenViewController *splashScreenViewController;
    splashScreenViewController = [[SplashScreenViewController alloc] initWithNibName:@"SplashScreenView" 
                                                                              bundle:nil];
    [window addSubview:[navigationController view]];
    [window addSubview:[splashScreenViewController view]];
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
