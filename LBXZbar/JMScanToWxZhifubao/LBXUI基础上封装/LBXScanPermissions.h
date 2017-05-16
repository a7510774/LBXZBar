//
//  LBXScanPermissions.h
//  LBXScanDemo
//
//  Created by lbxia on 2017/1/4.
//  Copyright © 2017年 lbx. All rights reserved.
//  原生扫码封装

#import <Foundation/Foundation.h>

/**
 相机及相册权限判断
 */
@interface LBXScanPermissions : NSObject

/**< 相机权限 */
+ (BOOL)cameraPemission;

/**< 相册权限 */
+ (BOOL)photoPermission;

@end
