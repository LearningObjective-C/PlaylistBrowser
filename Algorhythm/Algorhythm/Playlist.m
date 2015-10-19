//
//  Playlist.m
//  Algorhythm
//
//  Created by Cookie Gu on 15/10/17.
//  Copyright © 2015年 Cookie Gu. All rights reserved.
//

#import "Playlist.h"
#import "MusicLibrary.h"

@implementation Playlist

- (instancetype)initWithIndex:(NSUInteger)index {
    self = [super init];
    if (self) {
        MusicLibrary *musicLibrary = [[MusicLibrary alloc] init];
        NSArray *library = musicLibrary.library;
//Indexing expression is invalid because subscript type 'NSUInteger *' (aka 'unsigned long *') is not an integral or Objective-C pointer type
        NSDictionary *playlistDictionary = library[index];

        _playlistTitle = [playlistDictionary objectForKey:kTitle];

        _playlistDescription = [playlistDictionary objectForKey:kDescription];

        NSString *iconName = [playlistDictionary objectForKey:kIcon];
        _playlistIcon = [UIImage imageNamed:iconName];

        NSString *largeIconName = [playlistDictionary objectForKey:kLargeIcon];
        _playlistIcon = [UIImage imageNamed:largeIconName];

        //create the artists array
        _playlistArtists = [NSArray arrayWithArray:[playlistDictionary objectForKey:kArtists]];

        NSDictionary *colorDictionary = [playlistDictionary objectForKey:kBackgroundColor];
        _playlistBackgroundColor = [self rgbColorFromDictionary:colorDictionary];
    }
    return self;
}

- (UIColor *)rgbColorFromDictionary:(NSDictionary *)colorDictionary {
    CGFloat red = [[colorDictionary objectForKey:@"red"] doubleValue];
    CGFloat green = [[colorDictionary objectForKey:@"green"] doubleValue];
    CGFloat blue = [[colorDictionary objectForKey:@"blue"] doubleValue];
    CGFloat alpha = [[colorDictionary objectForKey:@"alpha"] doubleValue];

    return [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:alpha];
}

@end
