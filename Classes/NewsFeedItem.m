//
//  NewsFeedItem.m
//  GitHub
//
//  Created by Marcel Molina Jr on 7/15/08.
//  Copyright 2008 InfoEther. All rights reserved.
//

#import "NewsFeedItem.h"


@implementation NewsFeedItem
@synthesize published;
@synthesize author;
@synthesize url;
@synthesize title;
@synthesize content;

- (NSString *)description {
    return [NSString stringWithFormat:@"<NewsFeedItem title: '%@' published: '%@', author: '%@', content: '%@'>",
            title, published, author,  content];
}

- (void)dealloc {
    [published release];
    [author release];
    [url release];
    [title release];
    [content release];
    [super dealloc];
}
@end
