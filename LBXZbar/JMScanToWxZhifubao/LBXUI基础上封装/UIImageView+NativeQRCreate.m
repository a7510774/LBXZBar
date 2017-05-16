//
//  UIImageView+NativeQRCreate.m
//  LBXZBarDemo
//
//  Created by chengw on 2017/5/16.
//  Copyright © 2017年 JM. All rights reserved.
//

#import "UIImageView+NativeQRCreate.h"

@implementation UIImageView (NativeQRCreate)

- (void)imageWithQRString:(NSString *)qrString
{
    self.image = [UIImageView createQRWithString:qrString QRSize:self.bounds.size];
}

- (void)imageWithQRString:(NSString *)qrString logoImg:(UIImage *)logo{
    
    [self imageWithQRString:qrString];
    
    CGSize logoSize=CGSizeMake(30, 30);
    UIImageView *logoImgView = [[UIImageView alloc]initWithImage:logo];
    logoImgView.bounds = CGRectMake(0, 0, logoSize.width, logoSize.height);
    logoImgView.center = CGPointMake(CGRectGetWidth(self.frame)/2, CGRectGetHeight(self.frame)/2);
    [self addSubview:logoImgView];
}

- (void)imageWithBarString:(NSString *)barString
{
    self.image = [UIImageView createBarCodeWithString:barString barSize:self.bounds.size];
}

+ (UIImage*)createQRWithString:(NSString*)text QRSize:(CGSize)size
{
    NSData *stringData = [text dataUsingEncoding: NSUTF8StringEncoding];
    
    //生成
    CIFilter *qrFilter = [CIFilter filterWithName:@"CIQRCodeGenerator"];
    [qrFilter setValue:stringData forKey:@"inputMessage"];
    [qrFilter setValue:@"H" forKey:@"inputCorrectionLevel"];
    
    
    
    
    CIImage *qrImage = qrFilter.outputImage;
    
    //绘制
    CGImageRef cgImage = [[CIContext contextWithOptions:nil] createCGImage:qrImage fromRect:qrImage.extent];
    UIGraphicsBeginImageContext(size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetInterpolationQuality(context, kCGInterpolationNone);
    CGContextScaleCTM(context, 1.0, -1.0);
    CGContextDrawImage(context, CGContextGetClipBoundingBox(context), cgImage);
    UIImage *codeImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    CGImageRelease(cgImage);
    
    return codeImage;

}

+ (UIImage*)createBarCodeWithString:(NSString*)text barSize:(CGSize)size
{
    
    NSData *data = [text dataUsingEncoding:NSUTF8StringEncoding allowLossyConversion:false];
    
    CIFilter *filter = [CIFilter filterWithName:@"CICode128BarcodeGenerator"];
    
    [filter setValue:data forKey:@"inputMessage"];
    
    CIImage *barcodeImage = [filter outputImage];
    
    // 消除模糊
    
    CGFloat scaleX = size.width / barcodeImage.extent.size.width; // extent 返回图片的frame
    
    CGFloat scaleY = size.height / barcodeImage.extent.size.height;
    
    CIImage *transformedImage = [barcodeImage imageByApplyingTransform:CGAffineTransformScale(CGAffineTransformIdentity, scaleX, scaleY)];
    
    return [UIImage imageWithCIImage:transformedImage];
    
}


@end
