//
//  MediaInfoTableViewController.m
//  MuseVideoDemoObjectiveC
//
//  Created by wujianguo on 2016/10/11.
//  Copyright © 2016年 Paraken. All rights reserved.
//

#import "MediaInfoTableViewController.h"
#import <AVKit/AVKit.h>
#import <AVFoundation/AVFoundation.h>
#import <Photos/Photos.h>

@interface MediaInfoTableViewController ()

@property (weak, nonatomic) IBOutlet UILabel *resolutionLabel;
@property (weak, nonatomic) IBOutlet UILabel *durationLabel;
@property (weak, nonatomic) IBOutlet UILabel *sizeLabel;

@end

@implementation MediaInfoTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    AVAsset *asset = [AVAsset assetWithURL:self.url];
    NSInteger m = ((NSInteger)CMTimeGetSeconds(asset.duration)) / 60;
    NSInteger s = ((NSInteger)CMTimeGetSeconds(asset.duration)) % 60;
    self.durationLabel.text = [NSString stringWithFormat:@"%02ld:%02ld", (long)m, (long)s];

    for (AVAssetTrack *track in asset.tracks) {
        if ([track.mediaType isEqualToString:AVMediaTypeVideo]) {
            self.resolutionLabel.text = [NSString stringWithFormat:@"%ldx%ld", (long)track.naturalSize.width, (long)track.naturalSize.height];
            break;
        }
    }
    NSDictionary<NSFileAttributeKey, id> *attributes = [[NSFileManager defaultManager] attributesOfItemAtPath:self.url.path error:nil];
    NSNumber *filesize = [attributes valueForKey:NSFileSize];
    self.sizeLabel.text = [NSString stringWithFormat:@"%.2fM", filesize.doubleValue/1024/1024];

    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:self action:@selector(toggleSave:)];
}

- (void)toggleSave:(UIBarButtonItem *)sender {
    if ([PHPhotoLibrary authorizationStatus] == PHAuthorizationStatusNotDetermined) {
        [PHPhotoLibrary requestAuthorization:^(PHAuthorizationStatus status) {
            if (status == PHAuthorizationStatusAuthorized) {
                [self saveToPhotoLibrary];
            }
        }];
    } else if ([PHPhotoLibrary authorizationStatus] == PHAuthorizationStatusAuthorized) {
        [self saveToPhotoLibrary];
    }
}

- (void)saveToPhotoLibrary {
    [[PHPhotoLibrary sharedPhotoLibrary] performChanges:^{
        [PHAssetChangeRequest creationRequestForAssetFromVideoAtFileURL:self.url];
    } completionHandler:^(BOOL success, NSError * _Nullable error) {
        self.navigationItem.rightBarButtonItem.enabled = !success;
    }];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.destinationViewController isKindOfClass:[AVPlayerViewController class]]) {
        AVPlayerViewController *vc = (AVPlayerViewController*)segue.destinationViewController;
        vc.player = [AVPlayer playerWithURL:self.url];
    }
}

@end
