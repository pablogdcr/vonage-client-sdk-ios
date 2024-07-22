Pod::Spec.new do |spec|
  spec.name         = 'VonageClientSDK'
  spec.version      = '1.6.2'
  spec.summary      = 'Vonage Client SDK for iOS'
  spec.description  = <<-DESC
                      The Vonage Client SDK allows developers to integrate Vonage communication features into their iOS applications.
                      DESC
  spec.homepage     = 'https://vonage.com'
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  spec.author       = { 'Vonage' => 'support@vonage.com' }
  spec.source       = { :git => 'https://github.com/vonage/vonage-client-sdk.git', :tag => spec.version.to_s }
  spec.platform     = :ios, '13.0'
  spec.requires_arc = true

  spec.swift_versions = ['5.3']

  spec.source_files = 'Sources/**/*.{h,m,swift}'
  spec.resources = 'Resources/**/*'

  spec.frameworks = ['AVFoundation', 'AudioToolbox', 'CoreGraphics', 'CoreMedia', 'GLKit', 'VideoToolbox', 'CoreAudio', 'Network', 'MetalKit']
  spec.libraries = 'c++'

  spec.vendored_frameworks = [
    'https://d3opqjmqzxf057.cloudfront.net/vonage-webrtc/pod/vonagewebrtc/release/99.13.58/VonageWebRTC-99.13.58.zip',
    'https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.6.3-snapshot.43.0/ios/SPM-NXMCore-1.6.3-snapshot.43.0-Release.zip',
    'https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.6.3-snapshot.43.0/ios/SPM-VonageClientSDKCore-1.6.3-snapshot.43.0-Release.zip',
    'https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.6.3-snapshot.43.0/ios/SPM-VonageClientSDKChat-1.6.3-snapshot.43.0-Release.zip',
    'https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.6.3-snapshot.43.0/ios/SPM-VonageClientSDKVoice-1.6.3-snapshot.43.0-Release.zip',
    'https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.6.3-snapshot.43.0/ios/SPM-VonageClientSDK-1.6.3-snapshot.43.0-Release.zip'
  ]

  spec.subspec 'Voice' do |voice|
    voice.source_files = 'Sources/Voice/**/*.{h,m,swift}'
    voice.vendored_frameworks = [
      'https://d3opqjmqzxf057.cloudfront.net/vonage-webrtc/pod/vonagewebrtc/release/99.13.58/VonageWebRTC-99.13.58.zip',
      'https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.6.3-snapshot.43.0/ios/SPM-NXMCore-1.6.3-snapshot.43.0-Release.zip',
      'https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.6.3-snapshot.43.0/ios/SPM-VonageClientSDKCore-1.6.3-snapshot.43.0-Release.zip',
      'https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.6.3-snapshot.43.0/ios/SPM-VonageClientSDKVoice-1.6.3-snapshot.43.0-Release.zip'
    ]
  end

  spec.subspec 'Chat' do |chat|
    chat.source_files = 'Sources/Chat/**/*.{h,m,swift}'
    chat.vendored_frameworks = [
      'https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.6.3-snapshot.43.0/ios/SPM-NXMCore-1.6.3-snapshot.43.0-Release.zip',
      'https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.6.3-snapshot.43.0/ios/SPM-VonageClientSDKCore-1.6.3-snapshot.43.0-Release.zip',
      'https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.6.3-snapshot.43.0/ios/SPM-VonageClientSDKChat-1.6.3-snapshot.43.0-Release.zip'
    ]
  end

  spec.subspec 'Core' do |core|
    core.source_files = 'Sources/Core/**/*.{h,m,swift}'
    core.vendored_frameworks = [
      'https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.6.3-snapshot.43.0/ios/SPM-NXMCore-1.6.3-snapshot.43.0-Release.zip',
      'https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.6.3-snapshot.43.0/ios/SPM-VonageClientSDKCore-1.6.3-snapshot.43.0-Release.zip'
    ]
  end
end
