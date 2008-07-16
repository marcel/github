//
//  NewsFeedItemCell.m
//  GitHub
//
//  Created by Marcel Molina Jr on 7/16/08.
//  Copyright 2008 InfoEther. All rights reserved.
//

#import "NewsFeedItemCell.h"


@implementation NewsFeedItemCell
@synthesize published;
@synthesize title;
@synthesize author;
@synthesize icon;

- (id)initWithFrame:(CGRect)frame reuseIdentifier:(NSString *)reuseIdentifier {
	if (self = [super initWithFrame:frame reuseIdentifier:reuseIdentifier]) {
		// Initialization code
	}
	return self;
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {

	[super setSelected:selected animated:animated];

	// Configure the view for the selected state
}


- (void)dealloc {
  [published release];
  [title release];
  [author release];
  [icon release];
  
	[super dealloc];
}


@end
