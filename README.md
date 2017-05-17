# iOS 二维码、条形码 
Zbar扫码功能及UI封装，感谢https://github.com/MxABC/LBXScan

# 使用介绍
```obj-c

#import "JMQRScanVC.h"

- (IBAction)btnClick:(id)sender {
    JMQRScanVC *vc = [JMQRScanVC ScanWithUIType:ScanUITypeZhiFuBao codeType:ScanCodeTypeQR doneBlock:^(NSString *resultStr) {
        //识别成功回调
         NSLog(@"%@",resultStr);
        
    }];
    
    [self.navigationController pushViewController:vc animated:YES];
}

```
