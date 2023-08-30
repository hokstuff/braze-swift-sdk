Pod::Spec.new do |s|
  s.name              = 'BrazeNotificationService'
  s.version           = '6.6.0'
  s.summary           = 'Braze notification service extension library providing support for Rich Push notifications.'

  s.homepage          = 'https://braze.com'
  s.documentation_url = 'https://braze-inc.github.io/braze-swift-sdk/documentation/brazenotificationservice/'
  s.license           = { :type => 'Commercial' }
  s.authors           = 'Braze, Inc.'

  s.source            = {
    :http => 'https://github.com/hokstuff/braze-swift-sdk/releases/download/6.6.0/BrazeNotificationService.zip',
    :sha256 => '29a11d0e5354ad8c8e59122f406d0e47528ac1013f11186d1c21f23c993c371a'
  }

  s.swift_version           = '5.0'
  s.ios.deployment_target   = '11.0'

  s.vendored_framework      = 'BrazeNotificationService.xcframework'

  s.pod_target_xcconfig     = { 'DEFINES_MODULE' => 'YES' }
end
