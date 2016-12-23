//
//  MuseVideoUICustomization.h
//  MuseVideo
//
//  Created by wujianguo on 2016/10/21.
//  Copyright © 2016年 Paraken. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MuseVideoUIBase : NSObject

/// default: self.tintColor
@property (nonatomic, readonly)   UIColor     *navigationBarTitleColor;
/// default: self.tintColor
@property (nonatomic, readonly)   UIColor     *navigationBarTintColor;

/// default: blackColor
@property (nonatomic, readonly)   UIColor     *viewBackgroundColor;

/// default: whiteColor
@property (nonatomic, readonly)   UIColor     *tintColor;
/// default: self.tintColor
@property (nonatomic, readonly)   UIColor     *lightThemeColor;
/// default: F53457
@property (nonatomic, readonly)   UIColor     *themeColor;
@end


@interface MuseVideoCameraUICustomization : MuseVideoUIBase

/// default: self.tintColor
@property (nonatomic, readonly)           UIColor                             *filterNameColor;
@property (nonatomic, readonly)           UIFont                              *filterNameFont;

/// default: [self.tintColor colorWithAlphaComponent:0.8]
@property (nonatomic, readonly)           UIColor                             *countDownColor;
@property (nonatomic, readonly)           UIFont                              *countDownFont;

/// default: self.themeColor
@property (nonatomic, readonly)           UIColor                             *recordProgressTintColor;
/// default: FFFFFF alpha:0.15
@property (nonatomic, readonly)           UIColor                             *recordProgressTrackTintColor;
/// default: [self.themeColor colorWithAlphaComponent:0.5]
@property (nonatomic, readonly)           UIColor                             *recordProgressWillDeleteTintColor;
/// default: self.tintColor
@property (nonatomic, readonly)           UIColor                             *recordProgressCursorColor;

/// default: self.lightThemeColor
@property (nonatomic, readonly)           UIColor                             *recordTimeLabelColor;
@property (nonatomic, readonly)           UIFont                              *recordTimeLabelFont;
@property (nonatomic, readonly)           UIFont                              *recordTimeLabelBigFont;

@property (nonatomic, readonly)           UIImage                             *closeIcon;
@property (nonatomic, readonly)           UIImage                             *muteOnIcon;
@property (nonatomic, readonly)           UIImage                             *muteOffIcon;
@property (nonatomic, readonly)           UIImage                             *beautifyOnIcon;
@property (nonatomic, readonly)           UIImage                             *beautifyOffIcon;
@property (nonatomic, readonly)           UIImage                             *stabilizationOnIcon;
@property (nonatomic, readonly)           UIImage                             *stabilizationOffIcon;
@property (nonatomic, readonly)           UIImage                             *switchCameraIcon;
@property (nonatomic, readonly)           UIImage                             *torchOnIcon;
@property (nonatomic, readonly)           UIImage                             *torchOffIcon;
@property (nonatomic, readonly)           UIImage                             *countDownOnIcon;
@property (nonatomic, readonly)           UIImage                             *countDownOffIcon;

@property (nonatomic, readonly)           UIImage                             *recordBeginIcon;
@property (nonatomic, readonly)           UIImage                             *recordSelectedIcon;
@property (nonatomic, readonly)           UIImage                             *recordPauseIcon;
@property (nonatomic, readonly)           UIImage                             *recordDoneIcon;
@property (nonatomic, readonly)           UIImage                             *recordDoneDisableIcon;
@property (nonatomic, readonly)           UIImage                             *importIcon;
@property (nonatomic, readonly)           UIImage                             *willDeleteIcon;
@property (nonatomic, readonly)           UIImage                             *willDeleteDisableIcon;
@property (nonatomic, readonly)           UIImage                             *confirmDeleteIcon;

@end

/// 输出 resolution 为 16x9 全屏时使用，部分图标不同以便 UI 更美观
@interface MuseVideoCameraUICustomization16x9 : MuseVideoCameraUICustomization

@end

@interface MuseVideoEditorUICustomization : MuseVideoUIBase

/// default: blackColor
@property (nonatomic, readonly)           UIColor                             *playerBackgroundColor;
/// default: self.themeColor
@property (nonatomic, readonly)           UIColor                             *playerProgressColor;
/// default: self.themeColor
@property (nonatomic, readonly)           UIColor                             *trimmerTintColor;

/// default: F1F1F1
@property (nonatomic, readonly)           UIColor                             *startTimeColor;
/// default: F1F1F1
@property (nonatomic, readonly)           UIColor                             *endTimeColor;
/// default: self.themeColor
@property (nonatomic, readonly)           UIColor                             *durationColor;

@property (nonatomic, readonly)           UIFont                              *startTimeFont;
@property (nonatomic, readonly)           UIFont                              *endTimeFont;
@property (nonatomic, readonly)           UIFont                              *durationFont;

@property (nonatomic, readonly)           UIImage                             *voiceIcon;
@property (nonatomic, readonly)           UIImage                             *musicIcon;

/// default: self.themeColor
@property (nonatomic, readonly)           UIColor                             *voiceSliderMinimumTrackTintColor;
/// default: FFFFFF alpha: 0.3
@property (nonatomic, readonly)           UIColor                             *voiceSliderMaximumTrackTintColor;

@property (nonatomic, readonly)           UIImage                             *musicAddIcon;
@property (nonatomic, readonly)           UIImage                             *musicAddBackgroundIcon;
@property (nonatomic, readonly)           NSString                            *musicAddButtonTitle;
@property (nonatomic, readonly)           UIFont                              *musicAddButtonTitleFont;
/// default: self.tintColor
@property (nonatomic, readonly)           UIColor                             *musicAddButtonTitleColor;

@property (nonatomic, readonly)           UIImage                             *musicStatusIcon;
@property (nonatomic, readonly)           UIImage                             *musicDeleteIcon;
@property (nonatomic, readonly)           UIColor                             *musicNameColor;
@property (nonatomic, readonly)           UIFont                              *musicNameFont;
/// default: FFFFFF alpha: 0.05
@property (nonatomic, readonly)           UIColor                             *musicStatusViewColor;

@property (nonatomic, readonly)           UIImage                             *playIcon;
@end

@interface MuseVideoMusicPickerUICustomization : MuseVideoUIBase

/// default: FFFFFF alpha: 0.05
@property (nonatomic, readonly)       UIColor     *musicPickerSegmentedBackgroundColor;
/// default: 808080
@property (nonatomic, readonly)       UIColor     *musicPickerTitleNormalColor;
/// default: self.themeColor
@property (nonatomic, readonly)       UIColor     *musicPickerTitleSelectedColor;
/// default: 3A3A3A
@property (nonatomic, readonly)       UIColor     *musicPickerTrimmerBackground;

@end

@interface MuseVideoExportUICustomization : MuseVideoUIBase

@property (nonatomic, readonly)       UIColor     *exportProgressColor;
@property (nonatomic, readonly)       UIColor     *exportProgressTitleColor;
@property (nonatomic, readonly)       UIColor     *exportProgressButtonTitleColor;
@property (nonatomic, readonly)       UIColor     *exportProgressExitButtonBackgroundColor;
@property (nonatomic, readonly)       UIColor     *exportProgressButtonBackgroundColor;

@end

@interface MuseVideoUICustomization : NSObject

@property (nonatomic)           MuseVideoCameraUICustomization      *camera;
@property (nonatomic)           MuseVideoEditorUICustomization      *editor;
@property (nonatomic)           MuseVideoMusicPickerUICustomization *musicPicker;
@property (nonatomic)           MuseVideoExportUICustomization      *exportProgress;

@end

/// 输出 resolution 为 16x9 全屏时使用，部分图标不同以便 UI 更美观
@interface MuseVideoUICustomization16x9 : MuseVideoUICustomization

@end
