//
//  FeedController.h
//  GitHub
//
//  Created by Marcel Molina Jr on 7/16/08.
//  Copyright 2008 InfoEther. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FeedParser.h"
@protocol FeedControllerDelegate <NSObject>
@optional
-   (void)parser:(FeedParser *)parser 
didFinishLoading:(NSURL *)feedURL 
          result:(NSMutableArray *)result;
@end

@interface FeedController : NSObject {
    FeedParser *parser;
    id<FeedControllerDelegate> delegate;
}
@property (nonatomic, retain) FeedParser *parser;
@property (nonatomic, retain) id<FeedControllerDelegate> delegate;
+ (FeedController *)loadFeed:(NSURL *)feedURL delegate:(id<FeedControllerDelegate>)theDelegate;
- (id)initWithFeedURL:(NSURL *)feedURL delegate:(id<FeedControllerDelegate>)theDelegate;
- (void)load;
@end


