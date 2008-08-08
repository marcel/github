//
//  GitHubAppDelegate.h


//  iPhone Screencasts
//
//  Created by Marcel Molina


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

