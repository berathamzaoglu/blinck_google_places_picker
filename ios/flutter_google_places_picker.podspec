#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'flutter_google_places_picker'
  s.version          = '1.0.0'
  s.summary          = 'Flutter plugin for Google Places and Autocomplete'
  s.description      = <<-DESC
  Flutter plugin for Google Places Autocomplete
                       DESC
  s.homepage         = 'https://github.com/berathamzaoglu/blinck_google_places_picker.git'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Berat Hamzaoglu' => 'berathamzaoglu@hotmail.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'
  s.dependency 'GooglePlaces', '~> 4.0'
  s.static_framework = true
  s.ios.deployment_target = '13.0'
end

