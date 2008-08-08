//
//  NewsFeedItem.h
//  GitHub
//
//  Created by Marcel Molina Jr on 7/15/08.
//  Copyright 2008 InfoEther. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewsFeedItem : NSObject {
    NSString *tag;
    NSDate *published;
    NSString *author;
    NSURL *url;
    NSString *title;
    NSString *content;
    NSDictionary *_iconTypes;
}
@property (nonatomic, retain) NSString *tag;
@property (nonatomic, retain) NSDate *published;
@property (nonatomic, retain) NSString *author;
@property (nonatomic, retain) NSURL *url;
@property (nonatomic, retain) NSString *title;
@property (nonatomic, retain) NSString *content;

- (UIImage *)icon;
- (NSString *)iconName;
- (NSDictionary *)iconTypes;
@end
