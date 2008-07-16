//
//  GitHubAppDelegate.h
//  GitHub
//
//  Created by Marcel Molina Jr on 7/15/08.
//  Copyright InfoEther 2008. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GitHubAppDelegate : NSObject <UIApplicationDelegate> {	
	IBOutlet UIWindow *window;
  IBOutlet UINavigationController *navigationController;
}

@property (nonatomic, retain) UIWindow *window;
@property (nonatomic, retain) UINavigationController *navigationController;
@end

