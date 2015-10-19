//
//  PlaylistDetailViewController.h
//  Algorhythm
//
//  Created by Cookie Gu on 15/10/16.
//  Copyright © 2015年 Cookie Gu. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Playlist;

@interface PlaylistDetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *buttonPressLabel;
@property (strong, nonatomic) NSString *segueViewText;
@property (strong, nonatomic) Playlist *playlist;

@end
