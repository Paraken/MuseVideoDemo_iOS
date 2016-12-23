//
//  TakePhotoTableViewController.m
//  MuseVideoDemoObjectiveC
//
//  Created by wujianguo on 2016/12/1.
//  Copyright © 2016年 Paraken. All rights reserved.
//

#import "TakePhotoTableViewController.h"
#import <MuseVideo/MuseVideo.h>
#import "LiteTableViewController.h"
#import "ZFModalTransitionAnimator.h"
#import "PhotoInfoViewController.h"

@interface TakePhotoTableViewController () <MuseVideoDelegate>

@property (weak, nonatomic) IBOutlet UISwitch       *beautifySwitch;
@property (weak, nonatomic) IBOutlet UISwitch       *beautifySliderSwitch;
@property (weak, nonatomic) IBOutlet UISwitch       *cameraPositionSwitch;
@property (weak, nonatomic) IBOutlet UISwitch       *torchSwitch;
@property (weak, nonatomic) IBOutlet UISwitch       *countDownSwitch;
@property (weak, nonatomic) IBOutlet UISwitch       *customizeUISwitch;
@property (weak, nonatomic) IBOutlet UILabel        *watermarkPositionLabel;

@property (nonatomic)   MuseVideoResolution         resolution;
@property (nonatomic)   MuseVideoWatermarkPosition  watermarkPosition;
@property (nonatomic)   ZFModalTransitionAnimator   *animator;

@end

@implementation TakePhotoTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.resolution = MuseVideoResolution720x720;
    self.watermarkPosition = MuseVideoWatermarkPositionNone;
}

- (IBAction)launch:(UIBarButtonItem *)sender {
    MuseVideoPhotoConfig *config = [[MuseVideoPhotoConfig alloc] init];
    config.watermarkImage = [UIImage imageNamed:@"watermark"];
    config.watermarkSize = CGSizeMake(30, 30);
    config.enableBeautifySwitch = self.beautifySwitch.isOn;
    config.enableBeautifySlider = self.beautifySliderSwitch.isOn;
    config.enableSwitchCameraSwitch = self.cameraPositionSwitch.isOn;
    config.enableFlashSwitch = self.torchSwitch.isOn;
    config.enableCountDown = self.countDownSwitch.isOn;
    config.watermarkPosition = self.watermarkPosition;

    MuseVideoUICustomization *customization = nil;
    if (self.customizeUISwitch.isOn) {
        customization = [[MuseVideoUICustomization alloc] init];
        customization.camera = [[CameraUICustomization alloc] init];
        customization.editor = [[VideoEditorUICustomization alloc] init];
        customization.musicPicker = [[VideoMusicPickerUICustomization alloc] init];
    }

    UINavigationController *modalVC = [MuseVideo createTakingPhotoViewControllerWithConfig:config customization:customization delegate:self];
    modalVC.modalPresentationStyle = UIModalPresentationFullScreen;

    self.animator = [[ZFModalTransitionAnimator alloc] initWithModalViewController:modalVC];
    self.animator.dragable = NO;
    self.animator.bounces = NO;
    self.animator.behindViewAlpha = 0.5f;
    self.animator.behindViewScale = 0.8f;
    self.animator.transitionDuration = 0.7f;

    self.animator.direction = ZFModalTransitonDirectionBottom;
    modalVC.transitioningDelegate = self.animator;
    [self presentViewController:modalVC animated:YES completion:nil];
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0 && indexPath.row == 0) {
//        [self presentResolution];
    } else if (indexPath.section == 1 && indexPath.row == 1) {
        [self presentWatermarkPicker];
    }
}
/*
- (void)presentResolution {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    [alert addAction:[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {

    }]];
    [alert addAction:[UIAlertAction actionWithTitle:@"480x480" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self.resolution = MuseVideoResolution480x480;
        self.resolutionLabel.text = @"480x480";
    }]];
    [alert addAction:[UIAlertAction actionWithTitle:@"480x640" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self.resolution = MuseVideoResolution480x640;
        self.resolutionLabel.text = @"480x640";
    }]];
    [alert addAction:[UIAlertAction actionWithTitle:@"720x720" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self.resolution = MuseVideoResolution720x720;
        self.resolutionLabel.text = @"720x720";
    }]];
    [alert addAction:[UIAlertAction actionWithTitle:@"720x960" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self.resolution = MuseVideoResolution720x960;
        self.resolutionLabel.text = @"720x960";
    }]];
    [alert addAction:[UIAlertAction actionWithTitle:@"720x1280" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self.resolution = MuseVideoResolution720x1280;
        self.resolutionLabel.text = @"720x1280";
    }]];
    [alert addAction:[UIAlertAction actionWithTitle:@"1080x1080" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self.resolution = MuseVideoResolution1080x1080;
        self.resolutionLabel.text = @"1080x1080";
    }]];
    [alert addAction:[UIAlertAction actionWithTitle:@"1080x1440" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self.resolution = MuseVideoResolution1080x1440;
        self.resolutionLabel.text = @"1080x1440";
    }]];
    [alert addAction:[UIAlertAction actionWithTitle:@"1080x1920" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self.resolution = MuseVideoResolution1080x1920;
        self.resolutionLabel.text = @"1080x1920";
    }]];
    [self presentViewController:alert animated:YES completion:nil];
}
*/
- (void)presentWatermarkPicker {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    [alert addAction:[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {

    }]];
    [alert addAction:[UIAlertAction actionWithTitle:@"无" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self.watermarkPosition = MuseVideoWatermarkPositionNone;
        self.watermarkPositionLabel.text = @"无";
    }]];
    [alert addAction:[UIAlertAction actionWithTitle:@"左下" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self.watermarkPosition = MuseVideoWatermarkPositionBottomLeft;
        self.watermarkPositionLabel.text = @"左下";
    }]];
    [alert addAction:[UIAlertAction actionWithTitle:@"右下" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self.watermarkPosition = MuseVideoWatermarkPositionBottomRight;
        self.watermarkPositionLabel.text = @"右下";
    }]];
    [self presentViewController:alert animated:YES completion:nil];
}


- (void)museVCDidCancel:(UINavigationController *)vc {
    [vc dismissViewControllerAnimated:YES completion:nil];
}

- (void)museVC:(UINavigationController *)vc captureVideo:(NSURL *)videoPathURL withThumbnail:(UIImage *)thumbnail {

}

- (void)museVC:(UINavigationController *)vc captureImage:(UIImage *)image {
    PhotoInfoViewController *vvc = [[PhotoInfoViewController alloc] init];
    vvc.image = image;

    // do whatever you want.
    // 1. dismiss it and then push.
    [vc dismissViewControllerAnimated:YES completion:^{
        [self.navigationController pushViewController:vvc animated:YES];
    }];
    // 2. or just push. ```[vc pushViewController:vvc animated:YES];```
}

@end
