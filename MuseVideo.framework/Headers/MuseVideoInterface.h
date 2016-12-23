//
//  MuseVideoInterface.h
//  MuseVideo
//
//  Created by wujianguo on 16/9/18.
//  Copyright © 2016年 Paraken. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MuseVideo/MuseVideoCameraConfig.h>
#import <MuseVideo/MuseVideoUICustomization.h>
#import <MuseVideo/MuseVideoEditorConfig.h>

@protocol MuseVideoDelegate;


@interface MuseVideo : NSObject

/**
 * @brief 初始化 sdk.
 * @param appKey                开发者申请的应用 key.
 * @param url    MuseVideo 需要使用的临时目录, 为空则默认为 NSTemporaryDirectory()下的musevideo子目录.
 * @code
 *      let url = URL(fileURLWithPath: NSTemporaryDirectory()).appendingPathComponent("musevideo")
 *      MuseVideo.registerApp(withKey: "{{appkey}}", temporaryDirectory: url)
 * @endcode
 */
+ (void)registerAppWithKey:(NSString *)appKey appcode:(NSString *)appcode secret:(NSString *)secret temporaryDirectory:(NSURL *)url;

/**
 * @brief 创建一个 UINavigationController, 其 rootViewController 为相机 ViewController 用于拍摄视频.
 * @param config 当前所创建 CameraViewController 的配置，为空则使用 MuseVideoCameraConfig 默认参数.
 * @param customization MuseVideo 界面自定 ui, 为空则使用 MuseVideoUICustomization 默认参数
 * @param delegate MuseVideoDelegate.
 * @return 返回sdk所创建的 UINavigationController.
 */
+ (UINavigationController *)createCaptureVideoViewControllerWithConfig:(MuseVideoCameraConfig *)config
                                                         customization:(MuseVideoUICustomization *)customization
                                                              delegate:(id<MuseVideoDelegate>)delegate;

/**
 * @brief 创建一个 UINavigationController, 其 rootViewController 为相机 ViewController 用于拍摄照片.
 * @param config 当前所创建 CameraViewController 的配置，为空则使用 MuseVideoPhotoConfig 默认参数.
 * @param customization MuseVideo 界面自定 ui, 为空则使用 MuseVideoUICustomization(16x9) 默认参数
 * @param delegate MuseVideoDelegate.
 * @return 返回sdk所创建的 UINavigationController.
 */
+ (UINavigationController *)createTakingPhotoViewControllerWithConfig:(MuseVideoPhotoConfig *)config
                                                        customization:(MuseVideoUICustomization *)customization
                                                             delegate:(id<MuseVideoDelegate>)delegate;


/**
 * @brief 创建一个 UINavigationController, 其 rootViewController 为导入 ViewController.
 * @param config 当前所创建 ImportViewController 的配置，为空则使用 MuseVideoEditorConfig 默认参数.
 * @param customization MuseVideo 界面自定 ui, 为空则使用 MuseVideoUICustomization 默认参数
 * @param delegate MuseVideoDelegate.
 * @return 返回sdk所创建的 UINavigationController.
 */
+ (UINavigationController *)createImportViewControllerWithConfig:(MuseVideoEditorConfig *)config
                                                   customization:(MuseVideoUICustomization *)customization
                                                        delegate:(id<MuseVideoDelegate>)delegate;

/**
 * @brief 获取当前 sdk 版本号.
 */
+ (NSString *)sdkVersion;

@end
