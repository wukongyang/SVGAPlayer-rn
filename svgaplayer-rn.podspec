require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "svgaplayer-rn"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  svgaplayer-rn
                   DESC
  s.homepage     = "https://github.com/wukongyang/SVGAPlayer-rn"
  # brief license entry:
  s.license      = "MIT"
  # optional - use expanded license entry instead:
  # s.license    = { :type => "MIT", :file => "LICENSE" }
  s.authors      = { "wukongyang" => "694451448@qq.com" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/wukongyang/SVGAPlayer-rn.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,c,m,swift}"
  s.requires_arc = true

  s.dependency "React"
  # ...
  s.dependency "SVGAPlayer"
  
end

