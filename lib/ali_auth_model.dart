import 'dart:ui';

import 'package:flutter/material.dart';

/// 本机号码校验
const int SERVICE_TYPE_AUTH = 1;
/// 一键登录
const int SERVICE_TYPE_LOGIN = 2;

// ScaleType 可选类型
enum ScaleType {
  MATRIX,
  FIT_XY,
  FIT_START,
  FIT_CENTER,
  FIT_END,
  CENTER,
  CENTER_CROP,
  CENTER_INSIDE
}

/// 登录窗口配置
class AliAuthModel{
  /// aliyun sk
  @required final String sk;
  /// 是否使用dialog弹窗登录
  final bool isDialog;
  /// 是否开启debug模式
  final bool isDebug;
  /// 是否添加自定义背景布局
  final bool customPageBackgroundLyout;

  /// 1、状态栏

  /// statusBarColor 设置状态栏颜⾊（系统版本 5.0 以上可设置）
  final String statusBarColor;
  /// 设置状态栏是否隐藏
  final bool statusBarHidden;
  /// 设置状态栏UI属性 View.SYSTEM_UI_FLAG_LOW_PROFILE View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN
  /// public static final int SYSTEM_UI_FLAG_FULLSCREEN = 4;
  /// public static final int SYSTEM_UI_FLAG_HIDE_NAVIGATION = 2;
  /// public static final int SYSTEM_UI_FLAG_IMMERSIVE = 2048;
  /// public static final int SYSTEM_UI_FLAG_IMMERSIVE_STICKY = 4096;
  /// public static final int SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN = 1024;
  /// public static final int SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION = 512;
  /// public static final int SYSTEM_UI_FLAG_LAYOUT_STABLE = 256;
  /// public static final int SYSTEM_UI_FLAG_LIGHT_NAVIGATION_BAR = 16;
  /// public static final int SYSTEM_UI_FLAG_LIGHT_STATUS_BAR = 8192;
  final int statusBarUIFlag;
  /// 设置状态栏字体颜⾊（系统版本 6.0 以上可21设置⿊⾊、⽩⾊）。true 为⿊⾊
  final bool lightColor;
  /// 设置导航栏颜⾊
  final String navColor;
  /// 设置导航栏标题⽂字
  final String navText;
  /// 设置导航栏标题⽂字颜⾊
  final String navTextColor;
  /// 设置导航栏标题⽂字⼤⼩
  final int navTextSize;
  /// 设置导航栏返回键图⽚
  final String navReturnImgPath;
  /// 设置导航栏返回键宽度
  final int navReturnImgWidth;
  /// 设置导航栏返回键高度
  final int navReturnImgHeight;
  /// 设置导航栏返回按钮隐藏
  final bool navReturnHidden;
  /// 设置默认导航栏是否隐藏
  final bool navHidden;
  /// 设置协议⻚状态栏颜⾊（系统版本 5.0 以上可设置）不设置则与授权⻚设置⼀致
  final String webViewStatusBarColor;
  /// 设置协议⻚顶部导航栏背景⾊不设置则与授权⻚设置⼀致
  final String webNavColor;
  /// 设置协议⻚顶部导航栏标题颜⾊不设置则与授权⻚设置⼀致
  final String webNavTextColor;
  /// 设置协议⻚顶部导航栏⽂字⼤⼩22不设置则与授权⻚设置⼀致
  final int webNavTextSize;
  /// 设置协议⻚导航栏返回按钮图⽚路径不设置则与授权⻚设置⼀致
  final String webNavReturnImgPath;
  /// 设置底部虚拟按键背景⾊（系统版本 5.0 以上可设置）
  final String bottomNavColor;

  /// 2、授权⻚Logo

  /// 隐藏logo
  final bool logoHidden;
  /// 设置logo 图⽚
  final String logoImgPath;
  /// 设置logo 控件宽度
  final int logoWidth;
  /// 设置logo 控件⾼度
  final int logoHeight;
  /// 设置logo 控件相对导航栏顶部的位移，单位dp
  final int logoOffsetY;
  /// 设置logo图⽚缩放模式
  /// FIT_XY,
  /// FIT_START,
  /// FIT_CENTER,
  /// FIT_END,
  /// CENTER,
  /// CENTER_CROP,
  /// CENTER_INSIDE
  final String logoScaleType;

  /// 3、授权⻚Slogan
  
  /// 设置slogan ⽂字内容
  final String sloganText; 
  /// 设置slogan ⽂字颜⾊
  final String sloganTextColor; 
  /// 设置slogan ⽂字⼤⼩
  final int sloganTextSize; 
  /// 设置slogan 相对导航栏顶部的 位移，单位dp
  final int sloganOffsetY;

  /// 4、授权⻚号码栏
  
  /// 设置⼿机号码字体颜⾊
  final String numberColor; 
  /// 设置⼿机号码字体⼤⼩
  final int numberSize; 
  /// 设置号码栏控件相对导航栏顶部的位移，单位 dp
  final int numFieldOffsetY;
  /// 设置号码栏相对于默认位置的X轴偏移量，单位dp
  final int numberFieldOffsetX;
  /// 设置⼿机号掩码的布局对⻬⽅式，只⽀持Gravity.CENTER_HORIZONTAL、Gravity.LEFT、Gravity.RIGHT三种对⻬⽅式
  final int numberLayoutGravity;
  

  /// 5. 授权⻚登录按钮
  
  /// 设置登录按钮⽂字
  final String logBtnText;
  /// 设置登录按钮⽂字颜⾊
  final String logBtnTextColor;
  /// 设置登录按钮⽂字⼤⼩
  final int logBtnTextSize;
  /// 设置登录按钮宽度，单位 dp
  final int logBtnWidth;
  /// 设置登录按钮⾼度，单位dp
  final int logBtnHeight;
  /// 设置登录按钮相对于屏幕左右边缘边距
  final int logBtnMarginLeftAndRight;
  /// 设置登录按钮背景图⽚路径
  final String logBtnBackgroundPath;
  /// 设置登录按钮相对导航栏顶部的位移，单位 dp
  final int logBtnOffsetY;
  /// 设置登录loading dialog 背景图⽚路径24
  final String loadingImgPath;
  /// 设置登陆按钮X轴偏移量，如果设置了setLogBtnMarginLeftAndRight，并且布局对⻬⽅式为左对⻬或者右对⻬,则会在margin的基础上再增加offsetX的偏移量，如果是居中对⻬，则仅仅会在居中的基础上再做offsetX的偏移。
  final int logBtnOffsetX;
  /// 设置登陆按钮布局对⻬⽅式，只⽀持Gravity.CENTER_HORIZONTAL、Gravity.LEFT、Gravity.RIGHT三种对⻬⽅式
  final int logBtnLayoutGravity;

  /// 6. 授权⻚隐私栏
  
  /// 设置开发者隐私条款 1 名称和URL(名称，url) String,String
  final String appPrivacyOne;
  /// 设置开发者隐私条款 2 名称和URL(名称，url) String,String
  final String appPrivacyTwo;
  /// 设置隐私条款名称颜⾊(基础⽂字颜⾊，协议⽂字颜⾊)
  final String appPrivacyColor;
  /// 设置隐私条款相对导航栏顶部的位移，单位dp
  final int privacyOffsetY;
  /// 设置隐私条款是否默认勾选
  final bool privacyState;
  /// 设置隐私条款⽂字对⻬⽅式，单位Gravity.xxx
  final int protocolGravity;
  /// 设置隐私条款⽂字⼤⼩，单位sp
  final int privacyTextSize;
  /// 设置隐私条款距离⼿机左右边缘的边距，单位dp
  final int privacyMargin;
  /// 设置开发者隐私条款前置⾃定义25⽂案
  final String privacyBefore;
  /// 设置开发者隐私条款尾部⾃定义⽂案
  final String privacyEnd;
  /// 设置复选框是否隐藏
  final bool checkboxHidden; 
  /// 设置复选框未选中时图⽚
  final String uncheckedImgPath;
  /// 设置复选框选中时图⽚
  final String checkedImgPath;
  /// 设置运营商协议前缀符号，只能设置⼀个字符，且只能设置<>()《》【】『』[]（）中的⼀个
  final String vendorPrivacyPrefix;
  /// 设置运营商协议后缀符号，只能设置⼀个字符，且只能设置<>()《》【】『』[]（）中的⼀个
  final String vendorPrivacySuffix;
  /// 设置隐私栏的布局对⻬⽅式，该接⼝控制了整个隐私栏（包含checkbox）在其⽗布局中的对⻬⽅式，⽽setProtocolGravity控制的是隐私协议⽂字内容在⽂本框中的对⻬⽅式
  final int protocolLayoutGravity;
  /// 设置隐私栏X轴偏移量，单位dp
  final int privacyOffsetX;
  /// 设置checkbox未勾选时，点击登录按钮toast是否显示
  final bool logBtnToastHidden;

  /// 7. 切换⽅式控件
  
  /// 设置切换按钮点是否可⻅
  final bool switchAccHidden;
  /// 设置切换按钮⽂字内容
  final String switchAccText;
  /// 设置切换按钮⽂字颜⾊
  final String switchAccTextColor;
  /// 设置切换按钮⽂字⼤⼩
  final int switchAccTextSize;
  /// 设置换按钮相对导航栏顶部的位移，单位 dp
  final int switchOffsetY;

  /// 8. ⻚⾯相关函数

  /// 设置授权⻚进场动画
  final String authPageActIn;
  /// 设置授权⻚退出动画
  final String authPageActOut;
  /// 设置授权⻚背景图drawable资源的⽬录，不需要加后缀，⽐如图⽚在drawable中的存放⽬录是res/drawablexxhdpi/loading.png,则传⼊参数为"loading"，setPageBackgroundPath("loading")。
  final String pageBackgroundPath;
  /// dialog 蒙层的透明度
  final double dialogAlpha;
  /// 设置弹窗模式授权⻚宽度，单位dp,设置⼤于0即为弹窗模式
  final int dialogWidth;
  /// 设置弹窗模式授权⻚⾼度，单位dp，设置⼤于0即为弹窗模式
  final int dialogHeight;
  /// 设置弹窗模式授权⻚X轴偏移，单位dp
  final int dialogOffsetX;
  /// 设置弹窗模式授权⻚Y轴偏移,单位dp
  final int dialogOffsetY;
  /// 设置授权⻚是否居于底部
  final bool dialogBottom;

  AliAuthModel(this.sk, this.isDialog, this.isDebug, this.customPageBackgroundLyout, this.statusBarColor, this.statusBarHidden, this.statusBarUIFlag, this.lightColor, this.navColor, this.navText, this.navTextColor, this.navTextSize, this.navReturnImgPath, this.navReturnImgWidth, this.navReturnImgHeight, this.navReturnHidden, this.navHidden, this.webViewStatusBarColor, this.webNavColor, this.webNavTextColor, this.webNavTextSize, this.webNavReturnImgPath, this.bottomNavColor, this.logoHidden, this.logoImgPath, this.logoWidth, this.logoHeight, this.logoOffsetY, this.logoScaleType, this.sloganText, this.sloganTextColor, this.sloganTextSize, this.sloganOffsetY, this.numberColor, this.numberSize, this.numFieldOffsetY, this.numberFieldOffsetX, this.numberLayoutGravity, this.logBtnText, this.logBtnTextColor, this.logBtnTextSize, this.logBtnWidth, this.logBtnHeight, this.logBtnMarginLeftAndRight, this.logBtnBackgroundPath, this.logBtnOffsetY, this.loadingImgPath, this.logBtnOffsetX, this.logBtnLayoutGravity, this.appPrivacyOne, this.appPrivacyTwo, this.appPrivacyColor, this.privacyOffsetY, this.privacyState, this.protocolGravity, this.privacyTextSize, this.privacyMargin, this.privacyBefore, this.privacyEnd, this.checkboxHidden, this.uncheckedImgPath, this.checkedImgPath, this.vendorPrivacyPrefix, this.vendorPrivacySuffix, this.protocolLayoutGravity, this.privacyOffsetX, this.logBtnToastHidden, this.switchAccHidden, this.switchAccText, this.switchAccTextColor, this.switchAccTextSize, this.switchOffsetY, this.authPageActIn, this.authPageActOut, this.pageBackgroundPath, this.dialogAlpha, this.dialogWidth, this.dialogHeight, this.dialogOffsetX, this.dialogOffsetY, this.dialogBottom);
  factory AliAuthModel.fromJson(Map<String, dynamic> srcJson) => _$AliAuthModelFromJson(srcJson);
  Map<String, dynamic> toJson() => _$AliAuthModelToJson(this);
}

AliAuthModel _$AliAuthModelFromJson(Map<String, dynamic> json) {
  return AliAuthModel(
    json['sk'] as String,
    json['isDialog'] as bool,
    json['isDebug'] as bool,
    json['customPageBackgroundLyout'] as bool,
    json['statusBarColor'] as String,
    json['statusBarHidden'] as bool,
    json['statusBarUIFlag'] as int,
    json['lightColor'] as bool,
    json['navColor'] as String,
    json['navText'] as String,
    json['navTextColor'] as String, 
    json['navTextSize'] as int,
    json['navReturnImgPath'] as String,
    json['navReturnImgWidth'] as int,
    json['navReturnImgHeight'] as int,
    json['navReturnHidden'] as bool,
    json['navHidden'] as bool,
    json['webViewStatusBarColor'] as String, 
    json['webNavColor'] as String, 
    json['webNavTextColor'] as String, 
    json['webNavTextSize'] as int, 
    json['webNavReturnImgPath'] as String, 
    json['bottomNavColor'] as String, 
    json['logoHidden'] as bool, 
    json['logoImgPath'] as String, 
    json['logoWidth'] as int, 
    json['logoHeight'] as int, 
    json['logoOffsetY'] as int, 
    json['logoScaleType'] as String,
    json['sloganText'] as String, 
    json['sloganTextColor'] as String, 
    json['sloganTextSize'] as int, 
    json['sloganOffsetY'] as int, 
    json['numberColor'] as String,
    json['numberSize'] as int, 
    json['numFieldOffsetY'] as int, 
    json['numberFieldOffsetX'] as int,
    json['numberLayoutGravity'] as int, 
    json['logBtnText'] as String, 
    json['logBtnTextColor'] as String, 
    json['logBtnTextSize'] as int, 
    json['logBtnWidth'] as int, 
    json['logBtnHeight'] as int, 
    json['logBtnMarginLeftAndRight'] as int, 
    json['logBtnBackgroundPath'] as String, 
    json['logBtnOffsetY'] as int, 
    json['loadingImgPath'] as String,
    json['logBtnOffsetX'] as int, 
    json['logBtnLayoutGravity'] as int, 
    json['appPrivacyOne'] as String, 
    json['appPrivacyTwo'] as String, 
    json['appPrivacyColor'] as String, 
    json['privacyOffsetY'] as int, 
    json['privacyState'] as bool,
    json['protocolGravity'] as int, 
    json['privacyTextSize'] as int, 
    json['privacyMargin'] as int, 
    json['privacyBefore'] as String, 
    json['privacyEnd'] as String, 
    json['checkboxHidden'] as bool, 
    json['uncheckedImgPath'] as String, 
    json['checkedImgPath'] as String, 
    json['vendorPrivacyPrefix'] as String, 
    json['vendorPrivacySuffix'] as String, 
    json['protocolLayoutGravity'] as int, 
    json['privacyOffsetX'] as int, 
    json['logBtnToastHidden'] as bool, 
    json['switchAccHidden'] as bool, 
    json['switchAccText'] as String, 
    json['switchAccTextColor'] as String, 
    json['switchAccTextSize'] as int, 
    json['switchOffsetY'] as int, 
    json['authPageActIn'] as String,
    json['authPageActOut'] as String, 
    json['pageBackgroundPath'] as String,
    json['dialogAlpha'] as double,
    json['dialogWidth'] as int, 
    json['dialogHeight'] as int, 
    json['dialogOffsetX'] as int, 
    json['dialogOffsetY'] as int, 
    json['dialogBottom'] as bool
  );
}

Map<String, dynamic> _$AliAuthModelToJson(AliAuthModel instance) => <String, dynamic>{
  'sk':instance.sk,
  'isDialog':instance.isDialog,
  'isDebug':instance.isDebug,
  'customPageBackgroundLyout': instance.customPageBackgroundLyout,
  'statusBarColor':instance.statusBarColor,
  'statusBarHidden':instance.statusBarHidden,
  'statusBarUIFlag':instance.statusBarUIFlag,
  'lightColor':instance.lightColor,
  'navColor':instance.navColor,
  'navText':instance.navText,
  'navTextColor':instance.navTextColor,
  'navTextSize':instance.navTextSize,
  'navReturnImgPath':instance.navReturnImgPath,
  'navReturnImgWidth':instance.navReturnImgWidth,
  'navReturnImgHeight':instance.navReturnImgHeight,
  'navReturnHidden':instance.navReturnHidden,
  'navHidden':instance.navHidden,
  'webViewStatusBarColor':instance.webViewStatusBarColor,
  'webNavColor':instance.webNavColor,
  'webNavTextColor':instance.webNavTextColor,
  'webNavTextSize':instance.webNavTextSize,
  'webNavReturnImgPath':instance.webNavReturnImgPath,
  'bottomNavColor':instance.bottomNavColor,
  'logoHidden':instance.logoHidden,
  'logoImgPath':instance.logoImgPath,
  'logoWidth':instance.logoWidth,
  'logoHeight':instance.logoHeight,
  'logoOffsetY':instance.logoOffsetY,
  'logoScaleType':instance.logoScaleType,
  'sloganText':instance.sloganText,
  'sloganTextColor':instance.sloganTextColor,
  'sloganTextSize':instance.sloganTextSize,
  'sloganOffsetY':instance.sloganOffsetY,
  'numberColor':instance.numberColor,
  'numberSize':instance.numberSize,
  'numFieldOffsetY':instance.numFieldOffsetY,
  'numberFieldOffsetX':instance.numberFieldOffsetX,
  'numberLayoutGravity':instance.numberLayoutGravity,
  'logBtnText':instance.logBtnText,
  'logBtnTextColor':instance.logBtnTextColor,
  'logBtnTextSize':instance.logBtnTextSize,
  'logBtnWidth':instance.logBtnWidth,
  'logBtnHeight':instance.logBtnHeight,
  'logBtnMarginLeftAndRight':instance.logBtnMarginLeftAndRight,
  'logBtnBackgroundPath':instance.logBtnBackgroundPath,
  'logBtnOffsetY':instance.logBtnOffsetY,
  'loadingImgPath':instance.loadingImgPath,
  'logBtnOffsetX':instance.logBtnOffsetX,
  'logBtnLayoutGravity':instance.logBtnLayoutGravity,
  'appPrivacyOne':instance.appPrivacyOne,
  'appPrivacyTwo':instance.appPrivacyTwo,
  'appPrivacyColor':instance.appPrivacyColor,
  'privacyOffsetY':instance.privacyOffsetY,
  'privacyState':instance.privacyState,
  'protocolGravity':instance.protocolGravity,
  'privacyTextSize':instance.privacyTextSize,
  'privacyMargin':instance.privacyMargin,
  'privacyBefore':instance.privacyBefore,
  'privacyEnd':instance.privacyEnd,
  'checkboxHidden':instance.checkboxHidden,
  'uncheckedImgPath':instance.uncheckedImgPath,
  'checkedImgPath':instance.checkedImgPath,
  'vendorPrivacyPrefix':instance.vendorPrivacyPrefix,
  'vendorPrivacySuffix':instance.vendorPrivacySuffix,
  'protocolLayoutGravity':instance.protocolLayoutGravity,
  'privacyOffsetX':instance.privacyOffsetX,
  'logBtnToastHidden':instance.logBtnToastHidden,
  'switchAccHidden':instance.switchAccHidden,
  'switchAccText':instance.switchAccText,
  'switchAccTextColor':instance.switchAccTextColor,
  'switchAccTextSize':instance.switchAccTextSize,
  'switchOffsetY':instance.switchOffsetY,
  'authPageActIn':instance.authPageActIn,
  'authPageActOut':instance.authPageActOut,
  'pageBackgroundPath':instance.pageBackgroundPath,
  'dialogAlpha':instance.dialogAlpha,
  'dialogWidth':instance.dialogWidth,
  'dialogHeight':instance.dialogHeight,
  'dialogOffsetX':instance.dialogOffsetX,
  'dialogOffsetY':instance.dialogOffsetY,
  'dialogBottom':instance.dialogBottom
};


/// 初始配置&注意事项
/// 所有关于路径的字段需要在android/app/src/main/res/drawable 或者 drawable-xxxxxx 目录下有对应资源
/// 所有设置的大小都为dp 或者 单位 如果px 单位需要转换
/// 所有颜色设置为 十六进制颜色代码 加上两位数的透明度 例如 #00ffffff 为透明  #ffffff为白色
/// 当设置参数isdialog为false时 dialog 相关设置参数设置无效
/// 默认开启自定义第三方布局 加载文件为android/app/src/main/res/layout/custom_login.xml 名称的xml布局文件 如果自定义，修改改文件即可
/// 在自定义登录布局中点击事件返回的状态吗统一为returnCode：700005 returnData：点击的第几个按钮 // 具体看md
/// 参数dialogOffsetX dialogOffsetY 设置为-1 默认为居中
/// 关于弹窗的梦层设置 android/app/src/main/res/value/style.xml authsdk_activity_dialog参数设置
/// 当开启customPageBackgroundLyout 参数时 请确保layout 文件夹下有custom_page_background 名称布局文件，否则加载默认布局文件
AliAuthModel getConfig(){
  return AliAuthModel.fromJson({
    'isDialog':  false,
    'isDebug':  true,
    'customPageBackgroundLyout': true,
    'statusBarColor': "#00ffffff",
    'statusBarHidden': false,
    'statusBarUIFlag': 1024,
    'lightColor': true,
    'navColor': "#00ff00ff",
    'navText': '一键登录',
    'navTextColor': "#00333333",
    'navTextSize': -1,
    'navReturnImgPath': 'icon_close',
    'navReturnHidden': true,
    'navReturnImgWidth': 30,
    'navReturnImgHeight': 30,
    'navHidden': true,
    'webViewStatusBarColor': "#ffff00",
    'webNavColor': "#00ffff",
    'webNavTextColor': "#ff0000",
    'webNavTextSize': 33,
    'bottomNavColor': "#ffffff",
    'logoHidden': true,
    'logoImgPath': 'ic_launcher',
    'logoWidth': 100,
    'logoHeight': 100,
    'logoOffsetY': 20,
    'logoScaleType': "CENTER",
    'sloganText': '',
    'sloganTextColor': "#00555555",
    'sloganTextSize': 30,
    'sloganOffsetY': 150,
    'numberColor': "#555fff",
    'numberSize': 23,
    'numFieldOffsetY': 240,
    'numberFieldOffsetX': 0,
    'numberLayoutGravity': 0,
    'logBtnText': '一键登录',
    'logBtnTextColor': '#ffffff',
    'logBtnTextSize': 20,
    'logBtnWidth': 300,
    'logBtnHeight': 40,
    'logBtnMarginLeftAndRight': 33,
    'logBtnBackgroundPath': '',
    'logBtnOffsetY': 300,
    'loadingImgPath': '',
    'logBtnOffsetX': 0,
    'logBtnLayoutGravity': 10,
    'appPrivacyOne': '思预云用户协议, https://www.baidu.com',
    'appPrivacyTwo': '用户隐私, https://www.baidu.com',
    'appPrivacyColor': '#445588,#3971fe',
    'privacyOffsetY': 560,
    'privacyState': true,
    'protocolGravity': 0,
    'privacyTextSize': 11,
    'privacyMargin': 20,
    'privacyBefore': '',
    'privacyEnd': '',
    'checkboxHidden': false,
    'uncheckedImgPath': '',
    'checkedImgPath': '',
    'vendorPrivacyPrefix': '《',
    'vendorPrivacySuffix': '》',
    'protocolLayoutGravity': 10,
    'privacyOffsetX': 0,
    'logBtnToastHidden': true,
    'switchAccHidden': false,
    'switchAccText': '',
    'switchAccTextColor': '',
    'switchAccTextSize': 19,
    'switchOffsetY': -1,
    'authPageActIn': 'in_activity,out_activity',
    'authPageActOut': 'in_activity,out_activity',
    'pageBackgroundPath': 'page_background_color',
  });
}

/// dialogBottom 为false时 默认水平垂直居中
/// 如果需要修改弹窗的圆角背景可修改android/app/src/main/res/drawable/dialog_background_color.xml 文件
AliAuthModel getDislogConfig(){
  final screenWidth = (window.physicalSize.width / window.devicePixelRatio*0.8).floor();
  final screenHeight = (window.physicalSize.height / window.devicePixelRatio*0.65).floor();
  int logBtnOffset = (screenHeight/2).floor();
  return AliAuthModel.fromJson({
    'isDialog':  true,
    'isDebug':  true,
    'customPageBackgroundLyout': false,
    'statusBarColor': "#00000000",
    'statusBarHidden': true,
    'statusBarUIFlag': -1,
    'lightColor': true,
    'navColor': "#ff00ff",
    'navText': '一键登录',
    'navTextColor': "#333333",
    'navTextSize': -1,
    'navReturnImgPath': 'icon_close',
    'navReturnImgWidth': 30,
    'navReturnImgHeight': 30,
    'navReturnHidden': false,
    'navHidden': false,
    'logoHidden': false,
    'logoImgPath': 'ic_launcher',
    'logoWidth': 48,
    'logoHeight': 48,
    'logoOffsetY': 20,
    'logoScaleType': "CENTER",
    'sloganText': '一键登录欢迎语',
    'sloganTextColor': "#555555",
    'sloganTextSize': 11,
    'sloganOffsetY': logBtnOffset - 100,
    'numberColor': "#555fff",
    'numberSize': 15,
    'numFieldOffsetY': logBtnOffset - 50,
    'logBtnText': '一键登录',
    'logBtnTextColor': '#ffffff',
    'logBtnTextSize': 16,
    'logBtnHeight': 38,
    'logBtnMarginLeftAndRight': 15,
    'logBtnBackgroundPath': 'button',
    'logBtnOffsetY': logBtnOffset,
    'loadingImgPath': '',
    'appPrivacyOne': '思预云用户协议, https://www.baidu.com',
    'appPrivacyTwo': '用户隐私, https://www.baidu.com',
    'appPrivacyColor': '#445588,#3971fe',
    'privacyState': false,
    'protocolGravity': 0,
    'privacyTextSize': 11,
    'privacyMargin': 20,
    'vendorPrivacyPrefix': '《',
    'vendorPrivacySuffix': '》',
    'protocolLayoutGravity': 10,
    'switchAccTextSize': 11,
    'switchOffsetY': logBtnOffset + 50,
    'authPageActIn': 'in_activity,out_activity',
    'authPageActOut': 'in_activity,out_activity',
    'pageBackgroundPath': 'dialog_background_color',
    'dialogAlpha': 0.5,
    'dialogWidth': screenWidth,
    'dialogHeight': screenHeight,
    'dialogOffsetX': -1,
    'dialogOffsetY': -1,
    'dialogBottom': false
  });
}

//mAlicomAuthHelper.setAuthUIConfig(
//new AuthUIConfig.Builder()
//// 状态栏背景色
//.setStatusBarColor(Color.parseColor("#ffffff"))
//.setWebViewStatusBarColor(Color.parseColor("#ffffff"))
//// .setStatusBarColor(Color.TRANSPARENT)
//.setLightColor(true)
//// 导航栏设置
//.setNavHidden(true)
//.setNavColor(Color.parseColor("#3971fe")) // 导航栏背景色
//.setNavText("本机号码一键登录") // 导航栏背景色
//.setAppPrivacyColor(Color.GRAY, Color.parseColor("#3971fe"))
//// logo设置
//.setLogoHidden(true)
//.setLogoImgPath("ic_launcher")
//// slogan 设置
//.setSloganHidden(true)
//// 号码设置
//.setNumberColor(Color.parseColor("#3C4F5E"))
//// 按钮设置
//.setLogBtnText("本机号码一键登录")
//.setLogBtnBackgroundPath("button")
//.setLogBtnHeight(38)
//.setVendorPrivacyPrefix("《")
//.setVendorPrivacySuffix("》")
//// 切换到其他登录方式
//.setSwitchAccTextColor(Color.parseColor("#3A71FF"))
//.setSwitchAccText("使用验证码登录")
//.setScreenOrientation(authPageOrientation)
//// 动画效果
//.setAuthPageActIn("in_activity", "out_activity")
//.setAuthPageActOut("in_activity", "out_activity")
//// 勾选框
//.setCheckboxHidden(false)
//// 勾选框后方文字
//// .setPrivacyBefore("sadadasda")
//.setPrivacyState(false)
//// .setLogBtnBackgroundPath("slogan")
////.setPrivacyBefore("《达理用户协议》")
//.setAppPrivacyOne("《达理用户协议》", "https://www.baidu.com")
//.setAppPrivacyTwo("《达理用户隐私》", "https://www.baidu.com")
////.setStatusBarUIFlag(View.SYSTEM_UI_FLAG_LOW_PROFILE) // 沉浸式，需隐藏状态栏否则会出现和状态栏重叠的问题
////.setStatusBarUIFlag(View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN) // 沉浸式，需隐藏状态栏否则会出现和状态栏重叠的问题
//// 手机底部虚拟部分颜色
//.setBottomNavColor(Color.parseColor("#ffffff"))
//.create()
