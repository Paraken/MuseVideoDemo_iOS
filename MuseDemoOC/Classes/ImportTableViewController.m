//
//  ImportTableViewController.m
//  MuseVideoDemoObjectiveC
//
//  Created by wujianguo on 2016/11/2.
//  Copyright © 2016年 Paraken. All rights reserved.
//

#import "ImportTableViewController.h"
#import <MuseVideo/MuseVideo.h>
#import "MediaInfoTableViewController.h"

@interface ImportTableViewController () <MuseVideoDelegate>
@property (nonatomic)   NSURL                       *videoPathURL;

@property (weak, nonatomic) IBOutlet UILabel *minSecondsLabel;

@property (weak, nonatomic) IBOutlet UILabel *maxSecondsLabel;

@end

@implementation ImportTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)launch:(UIBarButtonItem *)sender {
    MuseVideoEditorConfig *config = [[MuseVideoEditorConfig alloc] init];
    config.minSeconds = self.minSecondsLabel.tag;
    config.maxSeconds = self.maxSecondsLabel.tag;
    UINavigationController *vc = [MuseVideo createImportViewControllerWithConfig:config delegate:self];
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)minSecondsValueChanged:(UISlider *)sender {
    self.minSecondsLabel.text = [NSString stringWithFormat:@"%ds", (int)sender.value];
    self.minSecondsLabel.tag = (int)sender.value;
}

- (IBAction)maxSecondsValueChanged:(UISlider *)sender {
    self.maxSecondsLabel.text = [NSString stringWithFormat:@"%ds", (int)sender.value];
    self.maxSecondsLabel.tag = (int)sender.value;
}

- (void)museVCDidCancel:(UINavigationController *)vc {
    [vc dismissViewControllerAnimated:YES completion:nil];
}

- (void)museVC:(UINavigationController *)vc captureVideo:(NSURL *)videoPathURL withThumbnail:(UIImage *)thumbnail {
    self.videoPathURL = videoPathURL;
    [vc dismissViewControllerAnimated:YES completion:^{
        [self performSegueWithIdentifier:@"ImportToMediaInfoSegueIdentifier" sender:nil];
    }];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.destinationViewController isKindOfClass:[MediaInfoTableViewController class]]) {
        MediaInfoTableViewController *vc = (MediaInfoTableViewController*)segue.destinationViewController;
        vc.url = self.videoPathURL;
    }
}

@end
