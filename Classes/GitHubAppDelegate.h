//
//  GitHubAppDelegate.h
//  GitHub
//
//  Created by Marcel Molina Jr on 7/15/08.
//  Copyright InfoEther 2008. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SplashScreenViewController.h"
#import "FeedController.h"

@interface GitHubAppDelegate : NSObject <UIApplicationDelegate, FeedControllerDelegate> {	
	IBOutlet UIWindow *window;
    IBOutlet UINavigationController *navigationController;
    IBOutlet SplashScreenViewController *splashScreenViewController;
    NSURL *_feedURL;
}

@property (nonatomic, retain) UIWindow *window;
@property (nonatomic, retain) UINavigationController *navigationController;
@property (nonatomic, retain) SplashScreenViewController *splashScreenViewController;
- (void)startLoadingNewsFeed;
- (BOOL)isLoggedIn;
- (NSURL *)feedURL;
- (NSString *)loggedInUser;
@end

