Pod::Spec.new do |s|
  s.name         = "PSAlertController"
  s.version      = "1.0.0"
  s.summary      = "定制化Alert"
  s.homepage     = "https://github.com/heqinqin/PSAlertController"
  s.license      = "MIT"
  s.authors      = { 'heqinqin' => '546551235@qq.com'}
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/heqinqin/PSAlertController.git", :tag => s.version }
  s.source_files = 'PSAlertController', 'PSAlertController/*.{h,m}'
  s.requires_arc = true
end