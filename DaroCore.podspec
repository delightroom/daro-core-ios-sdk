Pod::Spec.new do |spec|
  spec.name = 'DaroCore'
  spec.version = '1.1.3'
  spec.summary = 'Ad network mediation sdk for iOS.'
  spec.description = <<-DESC
                      Daro is is a SDK that helps you to easily integrate ad networks into your app.
                      DESC
  spec.homepage = 'https://delightroom.com'
  spec.license = { :type => 'Custom' }
  spec.author = { 'Jun hyi' => 'finn@delightroom.com' }
  spec.source = { :http => "https://github.com/delightroom/daro-core-ios-sdk/releases/download/#{spec.version}/DaroCore.xcframework.zip" }
  spec.swift_version = '5.7'
  spec.ios.deployment_target = '14.1'

  spec.resource_bundles = {
    'DaroCoreAdsResources' => ['DaroCore.xcframework/ios-arm64/DaroCore.framework/PrivacyInfo.xcprivacy']
  }

  spec.static_framework = true
  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  spec.vendored_frameworks = 'DaroCore.xcframework'
end
