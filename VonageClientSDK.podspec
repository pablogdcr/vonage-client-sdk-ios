#
# Be sure to run `pod lib lint VonageClientSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name                   = 'VonageClientSDKPackage'
  s.version                = '1.6.2'
  s.summary                = 'Vonage Client SDK for iOS.'
  s.homepage               = 'https://vonage.com/'
  s.platforms              = { :ios => "13.4" }
  s.swift_version          = '5.4'

  s.source_files = 'Sources/**/*.swift'
  s.resource_bundles = {"VonageClientSDK" => ["Dummy/Respiurces/PrivacyInfo.xcprivacy"]}
end
