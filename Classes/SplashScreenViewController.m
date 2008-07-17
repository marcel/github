//
//  SplashScreenViewController.m
//  GitHub
//
//  Created by Marcel Molina Jr on 7/16/08.
//  Copyright 2008 InfoEther. All rights reserved.
//

#import "SplashScreenViewController.h"


@implementation SplashScreenViewController
@synthesize activityIndicator;

/*
 Implement loadView if you want to create a view hierarchy programmatically
- (void)loadView {
}
 */


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	// Return YES for supported orientations
	return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
	// Release anything that's not essential, such as cached data
}


- (void)dealloc 
{
    [activityIndicator release];
	[super dealloc];
}

- (void)viewDidLoad 
{
    [activityIndicator startAnimating];
}

@end
