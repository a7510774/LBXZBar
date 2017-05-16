Pod::Spec.new do |s|
    s.name         = 'LBXScan_Zbar_gw'
    s.version      = '1.0.0'
    s.summary      = 'ios Zbar扫码封装'
    s.homepage     = 'https://github.com/a7510774/LBXZBar'
    s.license      = 'MIT'
    s.authors      = {'lbxia' => 'lbxia20091227@foxmail.com'}
    s.platform     = :ios, '7.0'
    s.source       = {:git => 'https://github.com/MxABC/LBXScan.git', :tag => s.version}
    s.requires_arc = true
    s.prefix_header_contents = '#import <Foundation/Foundation.h>'
    

    s.default_subspec = 'All'

    s.subspec 'All' do |all|
      all.source_files = 'LBXScan/LBXNative/*.{h,m}','LBXScan/LBXZXing/**/*.{h,m}','LBXScan/LBXZBar/*.{h,m}','LBXScan/UI/*.{h,m}'
      all.libraries = 'iconv','z'
      all.resource     = 'LBXScan/UI/CodeScan.bundle'
      all.dependency 'ZBarSDK', '~> 1.3.1'
      all.ios.frameworks = 'AVFoundation', 'CoreGraphics', 'CoreMedia', 'CoreVideo', 'ImageIO', 'QuartzCore'
    end

    s.subspec 'LBXNative' do |lbxNative|
      lbxNative.source_files = 'LBXScan/LBXNative/*.{h,m}'
      lbxNative.ios.frameworks = 'AVFoundation'
    end

    s.subspec 'LBXZXing' do |lbxZXing|
      lbxZXing.source_files = 'LBXScan/LBXZXing/**/*.{h,m}'
      lbxZXing.ios.frameworks = 'AVFoundation', 'CoreGraphics', 'CoreMedia', 'CoreVideo', 'ImageIO', 'QuartzCore'
    end

    s.subspec 'LBXZBar' do |lbxZBar|
       lbxZBar.source_files = 'LBXScan/LBXZBar/*.{h,m}'
       lbxZBar.libraries = 'iconv','z'
       lbxZBar.dependency 'ZBarSDK', '~> 1.3.1'
       lbxZBar.ios.frameworks = 'AVFoundation', 'CoreGraphics', 'CoreMedia'
    end
  
    s.subspec 'UI' do |ui|
      ui.source_files = 'LBXScan/UI/*.{h,m}'
      ui.resource     = 'LBXScan/UI/CodeScan.bundle'
    end

end
