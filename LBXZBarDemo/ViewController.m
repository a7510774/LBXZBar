//
//  ViewController.m
//  LBXScanNative
//
//  Created by chengw on 2017/5/11.
//  Copyright © 2017年 JM. All rights reserved.
//

#import "ViewController.h"
#import "JMQRScanVC.h"

@interface ViewController ()
@property (nonatomic,strong) UIImageView *qrImgView;/**< qr视图 识别成功后显示 */
@end

@implementation ViewController
- (IBAction)btnClick:(id)sender {
    JMQRScanVC *vc = [JMQRScanVC ScanWithUIType:ScanUITypeZhiFuBao codeType:ScanCodeTypeQR doneBlock:^(NSString *resultStr) {
        
        NSLog(@"%@",resultStr);
        //        [self.qrImgView imageWithQRString:resultStr];
        [self.qrImgView imageWithBarString:resultStr];
    }];
    
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

#pragma mark - *** getter *** -
- (UIImageView *)qrImgView{
    if (!_qrImgView) {
        _qrImgView = [[UIImageView alloc]init];
        _qrImgView.frame = CGRectMake(self.view.center.x - 30, 100, 60, 60);
        [self.view addSubview:_qrImgView];
    }
    return _qrImgView;
}

@end
