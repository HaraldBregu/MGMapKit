<<<<<<< HEAD
Pod::Spec.new do |s|
  s.name             = 'MGMapKit'
  s.version          = '0.1.0'
  s.summary          = 'When you sit down to work, external critics aren’t'
  s.description      = 'When you sit down to work, external critics aren’t the enemy. It’s you who you must to fight against to do great fucking work. You must overcome yourself. Saul Bass on failure: Failure is built into creativity… the creative act involves this element of ‘newness’ and ‘experimentalism,’ then one must expect and accept the fucking possibility of failure.'
  s.homepage         = 'https://github.com/HaraldBregu/'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'AldoOS' => 'harald.bregu@gmail.com' }
  s.source           = { :git => 'https://github.com/HaraldBregu/MGMapKit.git', :tag => s.version.to_s }
  s.ios.deployment_target = '12.0'
  s.swift_version = '4.2'
  s.source_files = 'MGMapKit/Classes/**/*'
  s.resource_bundles = {
      'MGMapKit' => ['MGMapKit/Assets/*.{png,lproj,storyboard}']
  }
  s.dependency 'Cosmos', '~> 18.0'
  s.dependency 'SDWebImage'
=======
#
# Be sure to run `pod lib lint MGMapKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MGMapKit'
  s.version          = '0.1.0'
  s.summary          = 'A short description of MGMapKit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/AldoOS/MGMapKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'AldoOS' => 'harald.bregu@gmail.com' }
  s.source           = { :git => 'https://github.com/AldoOS/MGMapKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'MGMapKit/Classes/**/*'
  
  # s.resource_bundles = {
  #   'MGMapKit' => ['MGMapKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
>>>>>>> d49f71f267afbd22b476e0c5a4754cb6a0f9ad35
end
