Pod::Spec.new do |spec|
  spec.name                = "Mad"
  spec.version             = "1.0.3"
  spec.summary             = "Mad SDK"
  spec.description         = "Mad SDK for iOS development"
  spec.homepage            = "https://mad.com"
  spec.author              = "Maddy"
  spec.platform            = :ios, "13.0"
  spec.license             = { :type => "Commercial" }
  spec.source              = { :http => "https://github.com/abinchy/mad/releases/download/1.0.3/Mad_1.0.3.zip" }
  
  spec.default_subspecs    = "Mad"
  
  spec.subspec "Mad" do |s|
    s.vendored_frameworks  = "Mad.xcframework"
    s.preserve_paths       = "Mad.xcframework"
  end

  spec.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'x86_64 arm64'
  }
end
