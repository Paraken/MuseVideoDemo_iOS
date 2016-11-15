//
//  MuseVideoEditorConfig.h
//  MuseVideo
//
//  Created by wujianguo on 2016/11/3.
//  Copyright © 2016年 Paraken. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MuseVideoEditorConfig : NSObject

/// 导入后生成的视频最小时长.
@property (nonatomic)   NSTimeInterval                          minSeconds;

/// 导入后生成的视频最大时长，最大仅支持 10min.
@property (nonatomic)   NSTimeInterval                          maxSeconds;

@end
