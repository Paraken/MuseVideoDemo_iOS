//
//  MuseVideoDefinitions.h
//  MuseVideo
//
//  Created by wujianguo on 2016/9/23.
//  Copyright © 2016年 Paraken. All rights reserved.
//

#ifndef MuseVideoDefinitions_h
#define MuseVideoDefinitions_h
#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, MuseVideoWatermarkPosition){
    MuseVideoWatermarkPositionNone = 0,
    MuseVideoWatermarkPositionBottomLeft,
    MuseVideoWatermarkPositionBottomRight
};

typedef NS_ENUM(NSInteger, MuseVideoCaptureDevicePosition) {
    MuseVideoCaptureDevicePositionUnspecified = 0,
    MuseVideoCaptureDevicePositionBack,
    MuseVideoCaptureDevicePositionFront
};

/**
 视频拍摄模式 
 */
typedef NS_ENUM(NSInteger, MuseVideoCaptureType) {
    /// 按住拍摄，松开暂停
    MuseVideoCaptureTypeMultiClipsExtendedPress = 0,

    /// 点击拍摄，再点击暂停
    MuseVideoCaptureTypeMultiClipsShortPress
};

/**
 视频分辨率
 */
typedef NS_ENUM(NSInteger, MuseVideoResolution) {
    MuseVideoResolution480x480 = 0,
    MuseVideoResolution480x640,
    MuseVideoResolution720x720,
    MuseVideoResolution720x960,
    MuseVideoResolution720x1280,
    MuseVideoResolution1080x1080,
    MuseVideoResolution1080x1440,
    MuseVideoResolution1080x1920
};

@protocol MuseVideoDelegate <NSObject>
- (void)museVCDidCancel:(UINavigationController *)vc;
- (void)museVC:(UINavigationController *)vc captureVideo:(NSURL *)videoPathURL withThumbnail:(UIImage *)thumbnail;
@end


@protocol MuseVideoCaptureMode <NSObject>
- (NSString *)title;
- (MuseVideoCaptureType)captureType;
- (NSTimeInterval)minSeconds;
- (NSTimeInterval)maxSeconds;
@end


#endif /* MuseVideoDefinitions_h */
