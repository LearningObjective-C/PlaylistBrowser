//
//  PlaylistMasterViewController.m
//  Algorhythm
//
//  Created by Cookie Gu on 15/10/9.
//  Copyright © 2015年 Cookie Gu. All rights reserved.
//

#import "PlaylistMasterViewController.h"
#import "PlaylistDetailViewController.h"

@interface PlaylistMasterViewController ()

@end

@implementation PlaylistMasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqual:@"showPlaylistDetail"]) {
        PlaylistDetailViewController *playlistDetailViewController = (PlaylistDetailViewController *)segue.destinationViewController;
        playlistDetailViewController.segueViewText = @"Button Pressed!";
    }
}

@end
