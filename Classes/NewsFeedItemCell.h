//
//  NewsFeedItemCell.h
//  GitHub
//
//  Created by Marcel Molina Jr on 7/16/08.
//  Copyright 2008 InfoEther. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface NewsFeedItemCell : UITableViewCell {
    IBOutlet UILabel *published;
    IBOutlet UILabel *title;
    IBOutlet UILabel *author;
    IBOutlet UIImageView *icon;
}

@property (nonatomic, retain) UILabel *published;
@property (nonatomic, retain) UILabel *title;
@property (nonatomic, retain) UILabel *author;
@property (nonatomic, retain) UIImageView *icon;

@end
