//
//  NewsFeedItem.h
//  GitHub
//
//  Created by Marcel Molina Jr on 7/15/08.
//  Copyright 2008 InfoEther. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewsFeedItem : NSObject {
    NSDate *published;
    NSString *author;
    NSURL *url;
    NSString *title;
    NSString *content;
}

@property (nonatomic, retain) NSDate *published;
@property (nonatomic, retain) NSString *author;
@property (nonatomic, retain) NSURL *url;
@property (nonatomic, retain) NSString *title;
@property (nonatomic, retain) NSString *content;
//- (id)initFromAtomEntry:(AtomEntry *)atomEntry;
@end