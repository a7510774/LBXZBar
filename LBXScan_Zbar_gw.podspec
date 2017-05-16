Pod::Spec.new do |spec|
    spec.name         = 'LBXScan_Zbar_gw'
    spec.version      = '1.0.0'
    spec.summary      = 'ios Zbar扫码封装'
    spec.homepage     = 'https://github.com/a7510774/LBXZBar'
    spec.license      = 'MIT'
    spec.authors      = {'gavin' => '260323117@qq.com'}
    spec.platform     = :ios, '7.0'
    spec.source       = {:git => 'https://github.com/a7510774/LBXZBar.git', :tag => spec.version}
    spec.requires_arc = true

    spec.source_files = 'LBXZBar/LBXZbar/JMScanToWxZhifubao/*','LBXZBar/LBXZbar/LBXZBar/*','LBXZBar/LBXZbar/LBXUI/*.{h,m}'
    spec.resource     = 'LBXZBar/LBXZbar/LBXUI/CodeScan.bundle'
    spec.dependency 'ZBarSDK', '~> 1.3.1'
    spec.libraries = 'iconv','z'
    spec.ios.frameworks = 'AVFoundation', 'CoreGraphics', 'CoreMedia'

end
