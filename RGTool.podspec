#
# Be sure to run `pod lib lint RGTool.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RGTool'
  s.version          = '0.0.2'
  s.summary          = 'RGTool'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = "开发中常用方法的封装"

  s.homepage         = 'https://github.com/iOSRG/RGTool'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  #  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.license          = 'MIT'
  s.author           = { '18607304107@163.com' => 'gui.ren@hand-china.com' }
  s.source           = { :git => 'https://github.com/iOSRG/RGTool.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  
  s.public_header_files = 'RGTool/BaseToolHeader.h'
  s.source_files = 'RGTool/BaseToolHeader.h'
  
  
  s.subspec 'Project' do |sp|
      sp.source_files = 'RGTool/Classes/Project/**/*'
  end
  
  s.subspec 'UIViewController' do |sv|
      sv.source_files = 'RGTool/Classes/UIViewController/**/*'
  end
  
  # s.resource_bundles = {
  #   'RGTool' => ['RGTool/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
