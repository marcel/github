//
//  FeedParser.m
//  GitHub
//
//  Created by Marcel Molina Jr on 7/15/08.
//  Copyright 2008 InfoEther. All rights reserved.
//

#import "FeedParser.h"

@interface FeedParser (PrivateMethods)
- (void)initializeParser;
- (void)resetCurrentStringValue;
@end

@implementation FeedParser
@synthesize parser;
@synthesize url;
@synthesize newsFeedItems;

- (id)initWithFeedURL:(NSURL *)feedURL {
  if (self = [super init]) {
    self.url            = feedURL;
    self.newsFeedItems  = [[NSMutableArray alloc] init];
    elementsWithContent = [[NSArray alloc] initWithObjects:@"id", 
                                                           @"published", 
                                                           @"title", 
                                                           @"content", 
                                                           @"name", 
                                                           nil];
    [self initializeParser];
    withinEntryElement  = NO;
  }
  return self;
}

- (void)initializeParser {
  self.parser                          = [[NSXMLParser alloc] initWithContentsOfURL:url];
  parser.delegate                      = self;
  parser.shouldResolveExternalEntities = YES;
}

- (BOOL)parse {
    if ([parser parse]) {
        NSLog(@"Parsing '%@' succeeded", url);
        return YES;
    }
    
    NSLog(@"Parsing '%@' failed", url);
    return NO;
}

- (void)parser:(NSXMLParser *)parser parseErrorOccurred:(NSError *)parseError {
    NSLog(@" Error -------------------------------------------- ");
    NSLog(@"%@", parseError);
    NSLog(@" -------------------------------------------------- ");
}

-  (void)parser:(NSXMLParser *)parser 
didStartElement:(NSString *)elementName 
   namespaceURI:(NSString *)namespaceURI 
  qualifiedName:(NSString *)qualifiedName 
     attributes:(NSDictionary *)attributeDict {

    if ([elementName isEqualToString:@"entry"]) {
        currentNewsFeedItem = [[NewsFeedItem alloc] init];
        withinEntryElement = YES;
        return;
    }
    
    if (!withinEntryElement) {
        return;
    }
    
    if ([elementsWithContent containsObject:elementName]) {
        currentStringValue = [[NSMutableString alloc] initWithCapacity:50];
    }
    
    if ([elementName isEqualToString:@"link"]) {
        currentNewsFeedItem.url = [[NSURL alloc] initWithString:[attributeDict objectForKey:@"href"]];
        return;
    }
}

- (void)parser:(NSXMLParser *)parser 
foundCharacters:(NSString *)string {
    if (!withinEntryElement) {
        return;
    }
    
    if (!currentStringValue) {
        return;
    }
    [currentStringValue appendString:string];
}

- (void)parser:(NSXMLParser *)parser 
 didEndElement:(NSString *)elementName 
  namespaceURI:(NSString *)namespaceURI 
 qualifiedName:(NSString *)qName {
    if (!withinEntryElement) {
        return;
    }
    
    if ([elementName isEqualToString:@"entry"]) {
        [newsFeedItems addObject:currentNewsFeedItem];
        [currentNewsFeedItem release];
        currentNewsFeedItem = nil;
        withinEntryElement = NO;
    } else if ([elementName isEqualToString:@"published"]) {
        NSDate *published;
        NSDateFormatter *dateFormatter;
        dateFormatter = [[NSDateFormatter alloc] init];
        NSRange range = NSMakeRange(0, 19);
        NSError *error;
        [dateFormatter setDateFormat:@"yyyy-MM-dd'T'kk:mm:ss"]; // e.g. 2008-07-15T20:57:20-07:00
        [dateFormatter getObjectValue:&published 
                            forString:currentStringValue 
                                range:&range 
                                error:&error];
        currentNewsFeedItem.published = published;
        [published release];
        [dateFormatter release];
    } else if ([elementName isEqualToString:@"id"]) {
        currentNewsFeedItem.tag = currentStringValue;
    } else if ([elementName isEqualToString:@"title"]) {
        currentNewsFeedItem.title = currentStringValue;
    } else if ([elementName isEqualToString:@"content"]) {
        currentNewsFeedItem.content = currentStringValue;
    } else if ([elementName isEqualToString:@"name"]) {
        currentNewsFeedItem.author = currentStringValue;
    }
    
    if ([elementsWithContent containsObject:elementName]) {
        [self resetCurrentStringValue];
    }

}

- (void)resetCurrentStringValue {
    if (currentStringValue) {
        [currentStringValue release];
    }
    currentStringValue = nil;
}

- (void)dealloc {
    [url release];
    [parser release];
    [newsFeedItems release];
    [elementsWithContent release];
    [super dealloc];
}
@end
