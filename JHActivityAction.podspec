Pod::Spec.new do |s|
  s.name          = "JHActivityAction"
  s.version       = "1.0.0"
  s.summary       = "Action sheet menu with page Control and customizable"
  s.homepage      = "https://github.com/kazekim/JHActivityAction/"
  s.license       = 'MIT'
  s.author        = { "Jirawat Harnsiriwatanakit" => "jirawat.h@kazekim.com" }
  s.source        = { :git => "https://github.com/kazekim/JHActivityAction.git", :tag => s.version.to_s }
  s.platform      = :ios, '7.0'
  s.source_files  = 'JHActivityAction/*.{h,m}'
  s.requires_arc  = true
  s.framework     = 'QuartzCore'
end
