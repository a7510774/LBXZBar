# iOS 二维码、条形码 
Zbar扫码功能及UI封装，感谢https://github.com/MxABC/LBXScan

# 使用介绍

pod 'ZBarSDK', '~> 1.3.1'

```obj-c

#import "JMQRScanVC.h"
- (IBAction)btnClick:(id)sender {
    JMQRScanVC *vc = [JMQRScanVC ScanWithUIType:ScanUITypeZhiFuBao codeType:ScanCodeTypeQR doneBlock:^(NSString *resultStr) {
        //扫码成功回调
        NSLog(@"%@",resultStr);
        
        //根据Sting创建QR图片
        [self.qrImgView imageWithQRString:resultStr];

    }];
    
    [self.navigationController pushViewController:vc animated:YES];
}


```
