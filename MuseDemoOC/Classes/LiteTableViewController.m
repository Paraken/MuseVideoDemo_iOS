//
//  LiteTableViewController.m
//  MuseVideoDemoObjectiveC
//
//  Created by wujianguo on 2016/10/11.
//  Copyright © 2016年 Paraken. All rights reserved.
//

#import "LiteTableViewController.h"
#import <MuseVideo/MuseVideo.h>
#import "MediaInfoTableViewController.h"
#import "ZFModalTransitionAnimator.h"
#import "PhotoInfoViewController.h"

@implementation CameraUICustomization16x9

- (UIColor *)navigationBarTintColor {
    return [UIColor colorWithRed:0x66/255.0 green:0x80/255.0 blue:0xa9/255.0 alpha:1];
}

- (UIColor *)navigationBarTitleColor {
    return [UIColor colorWithRed:0x66/255.0 green:0x80/255.0 blue:0xa9/255.0 alpha:1];
}

- (UIColor *)lightThemeColor {
    return [UIColor colorWithRed:0x66/255.0 green:0x80/255.0 blue:0xa9/255.0 alpha:1];
}

- (UIColor *)themeColor {
    return [UIColor colorWithRed:0x42/255.0 green:0x85/255.0 blue:0xf4/255.0 alpha:1];
}

- (UIColor *)viewBackgroundColor {
    return [UIColor whiteColor];
}

//- (UIImage *)closeIcon {
//    return [[UIImage imageNamed:@"MuseCloseIcon"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//}

- (UIImage *)muteOnIcon {
    return [UIImage imageNamed:@"MuseMuteOnIcon"];
}

//- (UIImage *)muteOffIcon {
//    return [UIImage imageNamed:@"MuseMuteOffIcon"];
//}

- (UIImage *)beautifyOnIcon {
    return [UIImage imageNamed:@"MuseBeautifyOnIcon"];
}

//- (UIImage *)beautifyOffIcon {
//    return [UIImage imageNamed:@"MuseBeautifyOffIcon"];
//}

- (UIImage *)stabilizationOnIcon {
    return [UIImage imageNamed:@"MuseStabilizationOnIcon"];
}

//- (UIImage *)stabilizationOffIcon {
//    return [UIImage imageNamed:@"MuseStabilizationOffIcon"];
//}

//- (UIImage *)switchCameraIcon {
//    return [UIImage imageNamed:@"MuseSwitchCameraIcon"];
//}

- (UIImage *)torchOnIcon {
    return [UIImage imageNamed:@"MuseTorchOnIcon"];
}

//- (UIImage *)torchOffIcon {
//    return [UIImage imageNamed:@"MuseTorchOffIcon"];
//}

- (UIImage *)countDownOnIcon {
    return [UIImage imageNamed:@"MuseCountDownOnIcon"];
}

//- (UIImage *)countDownOffIcon {
//    return [UIImage imageNamed:@"MuseCountDownOffIcon"];
//}

- (UIImage *)recordBeginIcon {
    return [UIImage imageNamed:@"MuseRecordBeginIcon"];
}

- (UIImage *)recordSelectedIcon {
    return [UIImage imageNamed:@"MuseRecordSeletedIcon"];
}

- (UIImage *)recordPauseIcon {
    return [UIImage imageNamed:@"MuseRecordPauseRecordIcon"];
}

@end

@implementation CameraUICustomization

- (UIColor *)navigationBarTintColor {
    return [UIColor colorWithRed:0x66/255.0 green:0x80/255.0 blue:0xa9/255.0 alpha:1];
}

- (UIColor *)navigationBarTitleColor {
    return [UIColor colorWithRed:0x66/255.0 green:0x80/255.0 blue:0xa9/255.0 alpha:1];
}

- (UIColor *)lightThemeColor {
    return [UIColor colorWithRed:0x66/255.0 green:0x80/255.0 blue:0xa9/255.0 alpha:1];
}

- (UIColor *)themeColor {
    return [UIColor colorWithRed:0x42/255.0 green:0x85/255.0 blue:0xf4/255.0 alpha:1];
}

- (UIColor *)viewBackgroundColor {
    return [UIColor whiteColor];
}

- (UIImage *)closeIcon {
    return [[UIImage imageNamed:@"MuseCloseIcon"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}

- (UIImage *)muteOnIcon {
    return [UIImage imageNamed:@"MuseMuteOnIcon"];
}

- (UIImage *)muteOffIcon {
    return [UIImage imageNamed:@"MuseMuteOffIcon"];
}

- (UIImage *)beautifyOnIcon {
    return [UIImage imageNamed:@"MuseBeautifyOnIcon"];
}

- (UIImage *)beautifyOffIcon {
    return [UIImage imageNamed:@"MuseBeautifyOffIcon"];
}

- (UIImage *)stabilizationOnIcon {
    return [UIImage imageNamed:@"MuseStabilizationOnIcon"];
}

- (UIImage *)stabilizationOffIcon {
    return [UIImage imageNamed:@"MuseStabilizationOffIcon"];
}

- (UIImage *)switchCameraIcon {
    return [UIImage imageNamed:@"MuseSwitchCameraIcon"];
}

- (UIImage *)torchOnIcon {
    return [UIImage imageNamed:@"MuseTorchOnIcon"];
}

- (UIImage *)torchOffIcon {
    return [UIImage imageNamed:@"MuseTorchOffIcon"];
}

- (UIImage *)countDownOnIcon {
    return [UIImage imageNamed:@"MuseCountDownOnIcon"];
}

- (UIImage *)countDownOffIcon {
    return [UIImage imageNamed:@"MuseCountDownOffIcon"];
}

- (UIImage *)recordBeginIcon {
    return [UIImage imageNamed:@"MuseRecordBeginIcon"];
}

- (UIImage *)recordSelectedIcon {
    return [UIImage imageNamed:@"MuseRecordSeletedIcon"];
}

- (UIImage *)recordPauseIcon {
    return [UIImage imageNamed:@"MuseRecordPauseRecordIcon"];
}

- (UIImage *)recordDoneIcon {
    return [UIImage imageNamed:@"MuseRecordDoneIcon"];
}

- (UIImage *)recordDoneDisableIcon {
    return [UIImage imageNamed:@"MuseRecordDoneGrayIcon"];
}

- (UIImage *)importIcon {
    return [UIImage imageNamed:@"MuseGalaryIcon"];
}

- (UIImage *)willDeleteIcon {
    return [UIImage imageNamed:@"MuseRecordWillDeleteIcon"];
}

- (UIImage *)willDeleteDisableIcon {
    return [UIImage imageNamed:@"MuseRecordWillDeleteGrayIcon"];
}

- (UIImage *)confirmDeleteIcon {
    return [UIImage imageNamed:@"MuseRecordConfirmDeleteIcon"];
}

@end

@implementation VideoEditorUICustomization

- (UIColor *)playerBackgroundColor {
    return [UIColor colorWithRed:0xec/255.0 green:0xf2/255.0 blue:0xfd/255.0 alpha:1];
}

- (UIColor *)navigationBarTintColor {
    return [UIColor colorWithRed:0x66/255.0 green:0x80/255.0 blue:0xa9/255.0 alpha:1];
}

- (UIColor *)navigationBarTitleColor {
    return [UIColor colorWithRed:0x66/255.0 green:0x80/255.0 blue:0xa9/255.0 alpha:1];
}

- (UIColor *)lightThemeColor {
    return [UIColor colorWithRed:0x66/255.0 green:0x80/255.0 blue:0xa9/255.0 alpha:1];
}

- (UIColor *)themeColor {
    return [UIColor colorWithRed:0x42/255.0 green:0x85/255.0 blue:0xf4/255.0 alpha:1];
}

- (UIColor *)viewBackgroundColor {
    return [UIColor whiteColor];
}

- (UIImage *)voiceIcon {
    return [UIImage imageNamed:@"MuseVoiceIcon"];
}

- (UIImage *)musicIcon {
    return [UIImage imageNamed:@"MuseMusicIcon"];
}

- (UIImage *)musicAddBackgroundIcon {
    return [UIImage imageNamed:@"MuseAddMusicBackground"];
}

- (UIImage *)musicStatusIcon {
    return [UIImage imageNamed:@"MuseAddMusicIcon"];
}

- (UIImage *)musicDeleteIcon {
    return [UIImage imageNamed:@"MuseCloseIcon"];
}

- (UIImage *)playIcon {
    return [UIImage imageNamed:@"MusePlayIcon"];
}

- (UIColor *)musicAddButtonTitleColor {
    return [UIColor whiteColor];
}

- (UIColor *)startTimeColor {
    return [UIColor colorWithRed:0x66/255.0 green:0x80/255.0 blue:0xa9/255.0 alpha:1];
}

- (UIColor *)endTimeColor {
    return [UIColor colorWithRed:0x66/255.0 green:0x80/255.0 blue:0xa9/255.0 alpha:1];
}

- (UIColor *)voiceSliderMaximumTrackTintColor {
    return [UIColor colorWithRed:0x42/255.0 green:0x85/255.0 blue:0xf4/255.0 alpha:0.5];

}

@end


@implementation VideoMusicPickerUICustomization

- (UIColor *)viewBackgroundColor {
    return [UIColor whiteColor];
}

- (UIColor *)navigationBarTintColor {
    return [UIColor colorWithRed:0x66/255.0 green:0x80/255.0 blue:0xa9/255.0 alpha:1];
}

- (UIColor *)navigationBarTitleColor {
    return [UIColor colorWithRed:0x66/255.0 green:0x80/255.0 blue:0xa9/255.0 alpha:1];
}

- (UIColor *)musicPickerSegmentedBackgroundColor {
    return [UIColor colorWithRed:0x42/255.0 green:0x85/255.0 blue:0xf4/255.0 alpha:0.3];
}

- (UIColor *)musicPickerTitleNormalColor {
    return [UIColor colorWithRed:0x66/255.0 green:0x80/255.0 blue:0xa9/255.0 alpha:1];
}

- (UIColor *)musicPickerTitleSelectedColor {
    return [UIColor colorWithRed:0x42/255.0 green:0x85/255.0 blue:0xf4/255.0 alpha:1];
}

- (UIColor *)musicPickerTrimmerBackground {
    return [UIColor colorWithRed:0x80/255.0 green:0x80/255.0 blue:0x80/255.0 alpha:1];
}

@end

@interface LiteTableViewController () <MuseVideoDelegate>

@property (nonatomic)   MuseVideoResolution         resolution;
@property (nonatomic)   MuseVideoWatermarkPosition  watermarkPosition;
@property (nonatomic)   NSURL                       *videoPathURL;

@property (weak, nonatomic) IBOutlet UILabel        *resolutionLabel;
@property (weak, nonatomic) IBOutlet UISwitch       *stabilizationSwitch;
@property (weak, nonatomic) IBOutlet UISwitch       *beautifySwitch;
@property (weak, nonatomic) IBOutlet UISwitch       *beautifySliderSwitch;


@property (weak, nonatomic) IBOutlet UISwitch       *muteSwitch;
@property (weak, nonatomic) IBOutlet UISwitch       *cameraPositionSwitch;
@property (weak, nonatomic) IBOutlet UISwitch       *editSwitch;
@property (weak, nonatomic) IBOutlet UISwitch       *importSwitch;

@property (weak, nonatomic) IBOutlet UISwitch       *torchSwitch;
@property (weak, nonatomic) IBOutlet UISwitch       *countDownSwitch;

@property (weak, nonatomic) IBOutlet UITextField    *bitRateTextField;

@property (weak, nonatomic) IBOutlet UILabel        *watermarkPositionLabel;

@property (weak, nonatomic) IBOutlet UISwitch       *clickModeSwitch;
@property (weak, nonatomic) IBOutlet UILabel        *clickModeMinSecondsLabel;
@property (weak, nonatomic) IBOutlet UILabel        *clickModeMaxSecondsLabel;

@property (weak, nonatomic) IBOutlet UISwitch       *selectModeSwitch;
@property (weak, nonatomic) IBOutlet UILabel        *selectModeMinSecondsLabel;

@property (weak, nonatomic) IBOutlet UILabel        *selectModeMaxSecondsLabel;

@property (weak, nonatomic) IBOutlet UISwitch       *customizeUISwitch;


@property (nonatomic)                ZFModalTransitionAnimator *animator;
@end

@implementation LiteTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.resolution = MuseVideoResolution720x720;
    self.watermarkPosition = MuseVideoWatermarkPositionNone;
}

- (IBAction)launch:(UIBarButtonItem *)sender {
    [self.bitRateTextField resignFirstResponder];
    MuseVideoCameraConfig *config = [[MuseVideoCameraConfig alloc] init];
    config.watermarkImage = [UIImage imageNamed:@"watermark"];
    config.watermarkSize = CGSizeMake(30, 30);
    NSMutableArray<id<MuseVideoCaptureMode>> *modes = [[NSMutableArray alloc] initWithCapacity:2];
    if (self.clickModeSwitch.isOn) {
        MuseVideoCaptureModeVideo *m = [[MuseVideoCaptureModeVideo alloc] init];
        m.title = self.clickModeMaxSecondsLabel.text;
        m.captureType = MuseVideoCaptureTypeMultiClipsShortPress;
        m.minSeconds = self.clickModeMinSecondsLabel.tag;
        m.maxSeconds = self.clickModeMaxSecondsLabel.tag;
        [modes addObject:m];
    }
    if (self.selectModeSwitch.isOn) {
        MuseVideoCaptureModeVideo *m = [[MuseVideoCaptureModeVideo alloc] init];
        m.title = self.selectModeMaxSecondsLabel.text;
        m.captureType = MuseVideoCaptureTypeMultiClipsExtendedPress;
        m.minSeconds = self.selectModeMinSecondsLabel.tag;
        m.maxSeconds = self.selectModeMaxSecondsLabel.tag;
        [modes addObject:m];
    }
    config.modes = modes;
    config.resolution = self.resolution;
    config.enableEdit = self.editSwitch.isOn;
    config.enableImport = self.importSwitch.isOn;
    config.enableStabilizationSwitch = self.stabilizationSwitch.isOn;
    config.enableMuteSwitch = self.muteSwitch.isOn;
    config.enableBeautifySwitch = self.beautifySwitch.isOn;
    config.enableBeautifySlider = self.beautifySliderSwitch.isOn;
    config.enableSwitchCameraSwitch = self.cameraPositionSwitch.isOn;
    config.enableTorchSwitch = self.torchSwitch.isOn;
    config.enableCountDown = self.countDownSwitch.isOn;
    config.bitrate = self.bitRateTextField.text.doubleValue;

    config.watermarkPosition = self.watermarkPosition;
//    UINavigationController *vc = [MuseVideo createCameraViewControllerWithConfig:config customization:nil delegate:self];
//    [self presentViewController:vc animated:YES completion:nil];

    MuseVideoUICustomization *customization = nil;
    if (self.customizeUISwitch.isOn) {
        if (config.resolution == MuseVideoResolution720x1280 || config.resolution == MuseVideoResolution1080x1920) {
            customization = [[MuseVideoUICustomization16x9 alloc] init];
            customization.camera = [[CameraUICustomization16x9 alloc] init];
        } else {
            customization = [[MuseVideoUICustomization alloc] init];
            customization.camera = [[CameraUICustomization alloc] init];
        }
        customization.editor = [[VideoEditorUICustomization alloc] init];
        customization.musicPicker = [[VideoMusicPickerUICustomization alloc] init];
    }

    UINavigationController *modalVC = [MuseVideo createCaptureVideoViewControllerWithConfig:config customization:customization delegate:self];
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

- (IBAction)beautifySwitchValueChanged:(UISwitch *)sender {
    self.beautifySliderSwitch.enabled = sender.isOn;
}

- (IBAction)clickModeMinSecondsValueChanged:(UISlider *)sender {
    self.clickModeMinSecondsLabel.text = [NSString stringWithFormat:@"%lds", (long)sender.value];
    self.clickModeMinSecondsLabel.tag = (NSInteger)sender.value;
}

- (IBAction)clickModeMaxSecondsValueChanged:(UISlider *)sender {
    self.clickModeMaxSecondsLabel.text = [NSString stringWithFormat:@"%lds", (long)sender.value];
    self.clickModeMaxSecondsLabel.tag = (NSInteger)sender.value;
}

- (IBAction)selectModeMinSecondsValueChanged:(UISlider *)sender {
    self.selectModeMinSecondsLabel.text = [NSString stringWithFormat:@"%lds", (long)sender.value];
    self.selectModeMinSecondsLabel.tag = (NSInteger)sender.value;
}

- (IBAction)selectModeMaxSecondsValueChanged:(UISlider *)sender {
    self.selectModeMaxSecondsLabel.text = [NSString stringWithFormat:@"%lds", (long)sender.value];
    self.selectModeMaxSecondsLabel.tag = (NSInteger)sender.value;
}

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {
    [self.bitRateTextField resignFirstResponder];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self.bitRateTextField resignFirstResponder];
    if (indexPath.section == 0 && indexPath.row == 0) {
        [self presentResolution];
    } else if (indexPath.section == 1 && indexPath.row == 1) {
        [self presentWatermarkPicker];
    }
}

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
    self.videoPathURL = videoPathURL;
    [vc dismissViewControllerAnimated:YES completion:^{
        [self performSegueWithIdentifier:@"MediaInfoSegueIdentifier" sender:nil];
    }];
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

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.destinationViewController isKindOfClass:[MediaInfoTableViewController class]]) {
        MediaInfoTableViewController *vc = (MediaInfoTableViewController*)segue.destinationViewController;
        vc.url = self.videoPathURL;
    }
}

@end
