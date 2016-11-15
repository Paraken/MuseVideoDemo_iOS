//
//  MuseVideoCameraConfig.h
//  MuseVideo
//
//  Created by wujianguo on 2016/9/29.
//  Copyright © 2016年 Paraken. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MuseVideo/MuseVideoDefinitions.h>

@interface MuseVideoCameraConfig : NSObject

/// 是否支持导入视频，默认开启.
@property (nonatomic, assign)   BOOL                                enableImport;

/// 拍摄完成后是否进入编辑，默认开启.
@property (nonatomic, assign)   BOOL                                enableEdit;

/// 是否开启倒计时拍摄功能，仅点击拍摄模式可用，默认开启.
@property (nonatomic, assign)   BOOL                                enableCountDown;

/// 拍摄页是否显示美颜开关，默认显示.
@property (nonatomic, assign)   BOOL                                enableBeautifySwitch;

/// 若显示美颜开关，则在打开美颜时是否开启美颜程度进度条，默认显示.
@property (nonatomic, assign)   BOOL                                enableBeautifySlider;

/// 启动时美颜开关是否打开, 默认为切换到前置摄像头时会打开.
@property (nonatomic, assign)   BOOL                                beautifySwitchDefaultValue;

/// 美颜打开时的默认美颜程度，取0-1，默认 0.5
@property (nonatomic, assign)   float                               beautifyPercentDefaultValue;

/// 拍摄页是否显示防抖开关, 默认显示.
@property (nonatomic, assign)   BOOL                                enableStabilizationSwitch;

/// 启动时防抖开关是否打开, 默认为打开.
@property (nonatomic, assign)   BOOL                                stabilizationSwitchDefaultValue;

/// 拍摄页是否显示静音开关, 默认显示.
@property (nonatomic, assign)   BOOL                                enableMuteSwitch;

/// 拍摄页是否显示前后摄像头开关, 默认显示.
@property (nonatomic, assign)   BOOL                                enableSwitchCameraSwitch;

/// 拍摄页是否显示闪光灯选择开关, 默认显示.
@property (nonatomic, assign)   BOOL                                enableTorchSwitch;

/// 指定拍摄模式, 支持单种拍摄模式或多种拍摄模式切换.
@property (nonatomic)           NSArray<id<MuseVideoCaptureMode>>   *modes;

/// 水印图片, 根据 watermarkPosition 显示.
@property (nonatomic)           UIImage                             *watermarkImage;

/// 指定水印位置, 默认为 MuseVideoWatermarkPositionNone.
@property (nonatomic, assign)   MuseVideoWatermarkPosition          watermarkPosition;

/// 进入拍摄页时的使用的摄像头, 若为 MuseVideoCaptureDevicePositionUnspecified，则使用用户上次退出时的摄像头。 默认为 MuseVideoCaptureDevicePositionUnspecified.
@property (nonatomic, assign)   MuseVideoCaptureDevicePosition      cameraFacing;

/// 输出分辨率, 默认为 MuseVideoResolution720x720。前置摄像头最高仅支持 720x1280.
@property (nonatomic, assign)   MuseVideoResolution                 resolution;

/// 根据 resolution 查询当前分辨率配置所对应的 CGSize.
@property (nonatomic, readonly) CGSize                              resolutionSize;

/// 视频码率 kbps，默认为 2764800，建议取值 800-8000，建议开发者根据需要设置为这几个档次：1036，2764，4147，7879
@property (nonatomic, assign)   double                              bitrate;

@end
