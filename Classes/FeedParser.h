//
//  FeedParser.h
//  GitHub
//
//  Created by Marcel Molina Jr on 7/15/08.
//  Copyright 2008 InfoEther. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NewsFeedItem.h"

@interface FeedParser : NSObject {
    NSXMLParser *parser;
    NSURL *url;
    NewsFeedItem *currentNewsFeedItem;
    NSMutableString *currentStringValue;
    NSMutableArray *newsFeedItems;
    NSArray *elementsWithContent;
    BOOL withinEntryElement;
}
@property (nonatomic, retain) NSXMLParser *parser;
@property (nonatomic, retain) NSURL *url;
@property (nonatomic, retain) NSMutableArray *newsFeedItems;
- (id)initWithFeedURL:(NSURL *)feedURL;
- (BOOL)parse;
@end
