//
//  Playlist.h
//  Algorhythm
//
//  Created by Cookie Gu on 15/10/17.
//  Copyright © 2015年 Cookie Gu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Playlist : NSObject

@property (strong, nonatomic) NSString *playlistTitle;
@property (strong, nonatomic) NSString *playlistDescription;
@property (strong, nonatomic) UIImage *playlistIcon;
@property (strong, nonatomic) UIImage *playlistLargeIcon;
@property (strong, nonatomic) NSArray *playlistArtists;
@property (strong, nonatomic) UIColor *playlistBackgroundColor;

@end
