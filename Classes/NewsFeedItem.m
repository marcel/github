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
    
	NSString *imagePath = [[NSBundle mainBundle] pathForResource:[self iconName]
														  ofType:@"png"];
	UIImage *image = [[UIImage alloc] initWithContentsOfFile:imagePath];
	return image;
}

- (NSString *)iconName
{
    for (NSString *titleSubstring in [self iconTypes]) {
        if ([title rangeOfString:titleSubstring].length) {
            return [[self iconTypes] objectForKey:titleSubstring];
        }
    }
    
    return @"site";
}

- (NSDictionary *)iconTypes
{
    if (_iconTypes == nil) {
        NSArray *titleSubstrings;
        NSArray *iconNames;
        titleSubstrings = [[NSArray alloc] initWithObjects:@"gist",
                                                           @"forked",
                                                           @"committed",
                                                           @"following",
                                                           @"commented",
                                                           @"deleted",
                                                           @"stopped following",
                                                           @"created",
                                                           @"added",
                                                           @"pull",
                                                           @"started watching",
                                                           @"stopped watching",
                                                           @"edited",
                                                           nil];
        
        iconNames = [[NSArray alloc] initWithObjects:@"gist", 
                                                     @"fork", 
                                                     @"commit", 
                                                     @"follow", 
                                                     @"comment", 
                                                     @"delete", 
                                                     @"member_remove", 
                                                     @"create", 
                                                     @"member_add", 
                                                     @"pull_request", 
                                                     @"watch_started", 
                                                     @"watch_stopped", 
                                                     @"wiki", 
                                                     nil];
        
        _iconTypes = [[NSDictionary alloc] initWithObjects:iconNames forKeys:titleSubstrings];
        [titleSubstrings release];
        [iconNames release];
    }
    return _iconTypes;
}

- (void)dealloc {
    [published release];
    [author release];
    [url release];
    [title release];
    [content release];
    [_iconTypes release];
    [super dealloc];
}
@end
