Pod::Spec.new do |s|
  s.name              = 'BrazePushStory'
  s.version           = '6.6.0'
  s.summary           = 'Braze notification content extension library providing support for Push Stories.'

  s.homepage          = 'https://braze.com'
  s.documentation_url = 'https://braze-inc.github.io/braze-swift-sdk/documentation/brazepushstory/'
  s.license           = { :type => 'Commercial' }
  s.authors           = 'Braze, Inc.'

  s.source            = {
    :http => 'https://github.com/hokstuff/braze-swift-sdk/releases/download/6.6.0/BrazePushStory.zip',
    :sha256 => 'c25b6f3bd7f9bfd0eea992e112afcc065dc564dfcbe2887ec5fa63aea8c6f196'
  }

  s.swift_version           = '5.0'
  s.ios.deployment_target   = '11.0'

  s.vendored_framework      = 'BrazePushStory.xcframework'

  s.pod_target_xcconfig     = { 'DEFINES_MODULE' => 'YES' }
end
