//
//  LBXScanResult.m
//  LBXZBarDemo
//
//  Created by chengw on 2017/5/16.
//  Copyright © 2017年 JM. All rights reserved.
//

#import "LBXScanResult.h"

@implementation LBXScanResult

- (instancetype)initWithScanString:(NSString*)str imgScan:(UIImage*)img barCodeType:(NSString*)type
{
    if (self = [super init]) {
        
        self.strScanned = str;
        self.imgScanned = img;
        self.strBarCodeType = type;
    }
    
    return self;
}

@end
