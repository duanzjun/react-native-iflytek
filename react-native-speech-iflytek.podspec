require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name           = package['name']
  s.version        = package['version']
  s.summary        = package['description']
  s.description    = package['description']
  s.license        = package['license']
  s.author         = package['author']
  s.homepage       = package['repository']['url']
  s.source         = { :git => 'https://github.com/duanzjun/react-native-speech-iflytek.git', :tag => s.version }

  s.requires_arc   = true
  s.platform       = :ios, '7.0'

  s.preserve_paths = 'README.md', 'package.json', 'index.js'
  s.vendored_frameworks = "**/iflyMSC.framework"
  s.source_files   = 'ios/RNSpeechIFlytek/*.{h,m}'
  s.frameworks = "AVFoundation", "SystemConfiguration", "Foundation", "CoreTelephony", "AudioToolbox","CoreLocation","Contacts","AddressBook","QuartzCore","CoreGraphics"
  s.library = "z"

  s.dependency 'React'
end 
