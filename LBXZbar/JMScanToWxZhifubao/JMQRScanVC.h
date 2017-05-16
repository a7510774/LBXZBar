//
//  JMScanVC.h
//  LBXScanNative
//
//  Created by chengw on 2017/5/11.
//  Copyright © 2017年 JM. All rights reserved.
//  封装原生扫码界面及功能：开关机、选相册、生成二维码图片

#import <UIKit/UIKit.h>
#import "LBXScanViewController.h"
#import "UIImageView+NativeQRCreate.h"//创建QR、BarCode使用

typedef enum : NSUInteger {
    ScanUITypeWX,//微信（1条线+内框）
    ScanUITypeQQ,//QQ （1条线+外框）
    ScanUITypeZhiFuBao,//支付宝（网格）
} ScanUIType;


/**
 封装系统自带的QR扫码库
 */
@interface JMQRScanVC : LBXScanViewController


/**
 初始化方法

 @param type 扫码UI类型：WX/QQ/Alipay
 @param scanCodeType 默认二维码（自带只能识别一种码）
 @param scanSuccessBlock 扫码返回的结果，包括选择图片
 */
+(instancetype)ScanWithUIType:(ScanUIType)type codeType:(ScanCodeType)scanCodeType doneBlock:(void (^)(NSString *resultStr))scanSuccessBlock;


@end
