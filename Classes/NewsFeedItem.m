//
//  NewsFeedItem.m
//  GitHub
//
//  Created by Marcel Molina Jr on 7/15/08.
//  Copyright 2008 InfoEther. All rights reserved.
//

#import "NewsFeedItem.h"


@implementation NewsFeedItem
@synthesize tag;
@synthesize published;
@synthesize author;
@synthesize url;
@synthesize title;
@synthesize content;

- (NSString *)description {
    return [NSString stringWithFormat:@"<NewsFeedItem tag:'%@' title:'%@' published:'%@', author:'%@', content:'%@'>",
            tag, title, published, author,  content];
}

- (UIImage *)icon {
	NSString *imagePath = [[NSBundle mainBundle] pathForResource:@"fork"
														  ofType:@"png"];
	UIImage *image = [[UIImage alloc] initWithContentsOfFile:imagePath];
	return image;
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
