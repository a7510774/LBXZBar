//
//  UIImageView+NativeQRCreate.h
//  LBXZBarDemo
//
//  Created by chengw on 2017/5/16.
//  Copyright © 2017年 JM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (NativeQRCreate)

/**
 根据二维码字符生成对应二维码
 
 @param qrString qr字符
 */
- (void)imageWithQRString:(NSString *)qrString;


/**
 创建二维码
 
 @param qrString 字符
 @param logo 中间LOGO图 (处理成30*30)
 */
- (void)imageWithQRString:(NSString *)qrString logoImg:(UIImage *)logo;

/**
 根据条形码字符生成对应条形码
 
 @param barString bar字符
 */
- (void)imageWithBarString:(NSString *)barString;

@end
