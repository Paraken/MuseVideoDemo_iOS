//
//  MuseVideoCaptureModeVideo.h
//  MuseVideo
//
//  Created by wujianguo on 2016/9/29.
//  Copyright © 2016年 Paraken. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MuseVideo/MuseVideoDefinitions.h>

@interface MuseVideoCaptureModeVideo : NSObject <MuseVideoCaptureMode>

@property (nonatomic) NSString              *title;
@property (nonatomic) MuseVideoCaptureType  captureType;
@property (nonatomic) NSTimeInterval        minSeconds;
@property (nonatomic) NSTimeInterval        maxSeconds;

@end
