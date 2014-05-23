Pod::Spec.new do |s|
  s.name             = "Tsuru-iOS-SDK"
  s.version          = "0.1.0"
  s.summary          = "Tsuru SDK for iOS."
  s.homepage         = "http://tsuru.io"
  s.license          = 'BSD'
  s.author           = { "Globo.com Mobile App Team" => "mobileapp@corp.globo.com" }
  s.source           = { :git => "http://github.com/tsuru/Tsuru-iOS-SDK.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/tsurupaas'
  s.platform         = :ios, '5.0'
  s.requires_arc     = true
  s.source_files     = 'Classes/**/*.{h,m}'
  s.dependency       'JSONModel'
end

