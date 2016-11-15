[![Paraken](http://www.paraken.com/img/logo2.png "Paraken")](http://www.paraken.com/)

MuseVideo iOS
---------
[![download](https://img.shields.io/badge/downloads-8.4M-green.svg)](http://www.paraken.com/musesdk/download/sdk/ios
) ![platform](https://img.shields.io/badge/platform-iOS-lightgray.svg) ![version](https://img.shields.io/badge/version-1.0-brightgreen.svg) ![Support](https://img.shields.io/badge/support-iOS%208%2B%20-blue.svg)

#### 简介
平行视野 MuseSDK 是一款集视频/照片拍摄和视频导入功能为一体的 SDK，提供了包括美颜、滤镜、水印、回删、按住拍、闪光灯、前后摄像头切换、对焦等功能。

- MuseSDK 标准版将以上功能集成，开发中仅需一句语句就可以调用视频拍摄或者视频导入功能。通过对参数进行配置，可以选择需要的功能。
- MuseSDK 定制版则在标准版基础上加入了更多高级功能，并且我们将根据用户需求对拍摄界面进行定制。

#### 安装 SDK
1. [下载 SDK](http://www.paraken.com/musesdk/download/sdk/ios)
2. 手动导入 MuseVideo.framework, Textures.bundle, Music.bundle

#### 获取授权
使用我司 MuseSDK 需要授权。不申请授权使用SDK时仅限评估用途。请发邮件到 <feedback@paraken.com> 询问商务合作相关信息。

####  Xcode 8 开发适配
SDK 最低支持 iOS8，拍摄功能需要在你的 info.plist 文件分别添加如下的 key，然后添加一个描述
- 📷 ```NSCameraUsageDescription```
- 🎤 ```NSMicrophoneUsageDescription```

如需编辑功能，则需再添加如下 key
- 🎵 ```NSAppleMusicUsageDescription```

如需导入功能，则需再添加如下 key
- 🖼 ```NSPhotoLibraryUsageDescription```

#### 初始化 SDK
##### swift
打开 AppDelegate.swift 文件，添加下列导入语句到头部。（注意，在所有使用 MuseVideo SDK 的代码中，都应先在文件头加入下列语句）
``` swift
import MuseVideo
```
粘贴下列代码到 ```application:didFinishLaunchingWithOptions``` 函数内
``` swift
MuseVideo.registerApp(withKey: "1234567890", appcode: "1234567890", secret: "1234567890", temporaryDirectory: nil)
```

##### Objective-C
打开 AppDelegate.m 文件，添加下列导入语句到头部。（注意，在所有使用 MuseVideo SDK 的代码中，都应先在文件头加入下列语句）
``` objective-c
#import <MuseVideo/MuseVideo.h>
```
粘贴下列代码到 ```- (void)applicationDidFinishLaunching:(UIApplication *)application;``` 函数内
``` objective-c
[MuseVideo registerAppWithKey:@"1234567890" appcode:@"1234567890" secret:@"1234567890" temporaryDirectory:nil];
```

#### 拍摄功能使用
##### swift
若只需按 SDK 默认设置，只需要如下两行代码进行拍摄
``` swift
let vc = MuseVideo.createCameraViewController(with: nil, customization: nil, delegate: self)
present(vc!, animated: true, completion: nil)
```

若只需按 SDK 默认设置，只需要如下两行代码进行导入
``` swift
let vc = MuseVideo.createImportViewController(with: nil, delegate: self)
present(vc!, animated: true, completion: nil)
```

若需进行自定义配置，则可参考如下代码
``` swift
let config = MuseVideoCameraConfig()
var modes = [MuseVideoCaptureMode]()

// 根据 app 需求添加点击拍摄模式
let shortMode = MuseVideoCaptureModeVideo()
shortMode.title = "15s"
shortMode.captureType = .multiClipsShortPress
shortMode.minSeconds = 5
shortMode.maxSeconds = 15
modes.append(shortMode)

// 根据 app 需求添加按住拍摄模式
let extendedMode = MuseVideoCaptureModeVideo()
extendedMode.title = "1min"
extendedMode.captureType = .multiClipsExtendedPress
extendedMode.minSeconds = 10
extendedMode.maxSeconds = 60
modes.append(extendedMode)

config.modes = modes // 根据 app 需求进行配置
config.enableEdit = true // 根据 app 需求进行配置
config.enableMuteSwitch = false // 根据 app 需求进行配置
// 添加你需要的其他配置
let vc = MuseVideo.createCameraViewController(with: config, customization: nil, delegate: self)
present(vc!, animated: true, completion: nil)
```

##### Objective-C
若只需按 SDK 默认设置，只需要如下两行代码进行拍摄
``` objective-c
UINavigationController *vc = [MuseVideo createCameraViewControllerWithConfig:nil customization:nil delegate:self];
[self presentViewController:vc animated:YES completion:nil];
```

若只需按 SDK 默认设置，只需要如下两行代码进行导入
``` objective-c
UINavigationController *vc = [MuseVideo createImportViewControllerWithConfig:nil delegate:self];
[self presentViewController:vc animated:YES completion:nil];
```

若需进行自定义配置，则可参考如下代码
``` objective-c
MuseVideoCameraConfig *config = [[MuseVideoCameraConfig alloc] init];
config.watermarkImage = [UIImage imageNamed:@"watermark"];
NSMutableArray<id<MuseVideoCaptureMode>> *modes = [[NSMutableArray alloc] initWithCapacity:2];

// 根据 app 需求添加点击拍摄模式
MuseVideoCaptureModeVideo *shortMode = [[MuseVideoCaptureModeVideo alloc] init];
shortMode.title = @"15s";
shortMode.captureType = MuseVideoCaptureTypeMultiClipsShortPress;
shortMode.minSeconds = 5;
shortMode.maxSeconds = 15;
[modes addObject:shortMode];

// 根据 app 需求添加按住拍摄模式
MuseVideoCaptureModeVideo *extendedMode = [[MuseVideoCaptureModeVideo alloc] init];
extendedMode.title = @"1min";
extendedMode.captureType = MuseVideoCaptureTypeMultiClipsExtendedPress;
extendedMode.minSeconds = 10;
extendedMode.maxSeconds = 60;
[modes addObject:extendedMode];

config.modes = modes; // 根据 app 需求进行配置
config.enableEdit = YES; // 根据 app 需求进行配置
config.enableMuteSwitch = NO; // 根据 app 需求进行配置
// 添加你需要的其他配置
UINavigationController *vc = [MuseVideo createCameraViewControllerWithConfig:config customization:nil delegate:self];
[self presentViewController:vc animated:YES completion:nil];
```
