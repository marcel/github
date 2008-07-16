//
//  SplashScreenViewController.h
//  GitHub
//
//  Created by Marcel Molina Jr on 7/16/08.
//  Copyright 2008 InfoEther. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface SplashScreenViewController : UIViewController {
    IBOutlet UIActivityIndicatorView *activityIndicator;
}
@property (nonatomic, retain) UIActivityIndicatorView *activityIndicator;
@end
