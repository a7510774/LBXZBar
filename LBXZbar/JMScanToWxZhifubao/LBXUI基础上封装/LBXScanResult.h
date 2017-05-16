//
//  LBXScanResult.h
//  LBXZBarDemo
//
//  Created by chengw on 2017/5/16.
//  Copyright © 2017年 JM. All rights reserved.
//

@import UIKit;
@import Foundation;
@import AVFoundation;

@interface LBXScanResult : NSObject
- (instancetype)initWithScanString:(NSString*)str imgScan:(UIImage*)img barCodeType:(NSString*)type;

/**
 @brief  条码字符串
 */
@property (nonatomic, copy) NSString* strScanned;
/**
 @brief  扫码图像
 */
@property (nonatomic, strong) UIImage* imgScanned;
/**
 @brief  扫码码的类型,AVMetadataObjectType  如AVMetadataObjectTypeQRCode，AVMetadataObjectTypeEAN13Code等
 如果使用ZXing扫码，返回类型也已经转换成对应的AVMetadataObjectType
 */
@property (nonatomic, copy) NSString* strBarCodeType;

@end
