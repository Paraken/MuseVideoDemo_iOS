//
//  MuseVideoUICustomization.h
//  MuseVideo
//
//  Created by wujianguo on 2016/10/21.
//  Copyright © 2016年 Paraken. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MuseVideoUIBase : NSObject

@property (nonatomic)   UIColor     *navigationBarTitleColor;
@property (nonatomic)   UIColor     *navigationBarTintColor;

@property (nonatomic)   UIColor     *viewBackgroundColor;

@property (nonatomic)   UIColor     *tintColor;
@property (nonatomic)   UIColor     *themeColor;
@end


@interface MuseVideoCameraUICustomization : MuseVideoUIBase

@property (nonatomic)           UIColor                             *filterNameColor;
@property (nonatomic)           UIFont                              *filterNameFont;

@property (nonatomic)           UIColor                             *countDownColor;
@property (nonatomic)           UIFont                              *countDownFont;

@property (nonatomic)           UIColor                             *recordProgressTintColor;
@property (nonatomic)           UIColor                             *recordProgressTrackTintColor;
@property (nonatomic)           UIColor                             *recordProgressWillDeleteTintColor;
@property (nonatomic)           UIColor                             *recordProgressCursorColor;

@property (nonatomic)           UIColor                             *recordTimeLabelColor;
@property (nonatomic)           UIFont                              *recordTimeLabelFont;
@property (nonatomic)           UIFont                              *recordTimeLabelBigFont;

@property (nonatomic)           UIImage                             *closeIcon;
@property (nonatomic)           UIImage                             *muteOnIcon;
@property (nonatomic)           UIImage                             *muteOffIcon;
@property (nonatomic)           UIImage                             *beautifyOnIcon;
@property (nonatomic)           UIImage                             *beautifyOffIcon;
@property (nonatomic)           UIImage                             *stabilizationOnIcon;
@property (nonatomic)           UIImage                             *stabilizationOffIcon;
@property (nonatomic)           UIImage                             *switchCameraIcon;
@property (nonatomic)           UIImage                             *torchOnIcon;
@property (nonatomic)           UIImage                             *torchOffIcon;
@property (nonatomic)           UIImage                             *countDownOnIcon;
@property (nonatomic)           UIImage                             *countDownOffIcon;

@property (nonatomic)           UIImage                             *recordBeginIcon;
@property (nonatomic)           UIImage                             *recordSelectedIcon;
@property (nonatomic)           UIImage                             *recordPauseIcon;
@property (nonatomic)           UIImage                             *recordDoneIcon;
@property (nonatomic)           UIImage                             *recordDoneDisableIcon;
@property (nonatomic)           UIImage                             *importIcon;
@property (nonatomic)           UIImage                             *willDeleteIcon;
@property (nonatomic)           UIImage                             *willDeleteDisableIcon;
@property (nonatomic)           UIImage                             *confirmDeleteIcon;

@end

@interface MuseVideoCameraUICustomization16x9 : MuseVideoCameraUICustomization

@end

@interface MuseVideoEditorUICustomization : MuseVideoUIBase

@property (nonatomic)           UIColor                             *playerBackgroundColor;
@property (nonatomic)           UIColor                             *playerProgressColor;
@property (nonatomic)           UIColor                             *trimmerTintColor;

@property (nonatomic)           UIColor                             *startTimeColor;
@property (nonatomic)           UIColor                             *endTimeColor;
@property (nonatomic)           UIColor                             *durationColor;

@property (nonatomic)           UIFont                              *startTimeFont;
@property (nonatomic)           UIFont                              *endTimeFont;
@property (nonatomic)           UIFont                              *durationFont;

@property (nonatomic)           UIImage                             *voiceIcon;
@property (nonatomic)           UIImage                             *musicIcon;

@property (nonatomic)           UIColor                             *voiceSliderMinimumTrackTintColor;
@property (nonatomic)           UIColor                             *voiceSliderMaximumTrackTintColor;

@property (nonatomic)           UIImage                             *musicAddIcon;
@property (nonatomic)           UIImage                             *musicAddBackgroundIcon;
@property (nonatomic)           NSString                            *musicAddButtonTitle;
@property (nonatomic)           UIFont                              *musicAddButtonTitleFont;
@property (nonatomic)           UIColor                             *musicAddButtonTitleColor;

@property (nonatomic)           UIImage                             *musicStatusIcon;
@property (nonatomic)           UIImage                             *musicDeleteIcon;
@property (nonatomic)           UIColor                             *musicNameColor;
@property (nonatomic)           UIFont                              *musicNameFont;
@property (nonatomic)           UIColor                             *musicStatusViewColor;

@property (nonatomic)           UIImage                             *playIcon;
@end

@interface MuseVideoMusicPickerUICustomization : MuseVideoUIBase

@property (nonatomic)       UIColor     *musicPickerSegmentedBackgroundColor;
@property (nonatomic)       UIColor     *musicPickerTitleNormalColor;
@property (nonatomic)       UIColor     *musicPickerTitleSelectedColor;
@property (nonatomic)       UIColor     *musicPickerTrimmerBackground;

@end

@interface MuseVideoExportUICustomization : MuseVideoUIBase

@property (nonatomic)       UIColor     *exportProgressColor;
@property (nonatomic)       UIColor     *exportProgressTitleColor;
@property (nonatomic)       UIColor     *exportProgressButtonTitleColor;
@property (nonatomic)       UIColor     *exportProgressExitButtonBackgroundColor;
@property (nonatomic)       UIColor     *exportProgressButtonBackgroundColor;

@end

@interface MuseVideoUICustomization : NSObject

@property (nonatomic)           MuseVideoCameraUICustomization      *camera;
@property (nonatomic)           MuseVideoEditorUICustomization      *editor;
@property (nonatomic)           MuseVideoMusicPickerUICustomization *musicPicker;
@property (nonatomic)           MuseVideoExportUICustomization      *exportProgress;

@end

@interface MuseVideoUICustomization16x9 : MuseVideoUICustomization

@end
