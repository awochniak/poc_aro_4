Pod::Spec.new do |s|
  s.name             = 'poc_aro_4'
  s.version          = '1.0.0'
  s.summary          = 'A short description of poc_aro_4.'
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/awochniak/poc_aro_4'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'awochniak' => 'arkadiusz.wochniak@przelewy24.pl' }
  s.source           = { :git => 'https://github.com/awochniak/poc_aro_4.git', :tag => s.version.to_s }

  s.module_name   = 'ui_common'
  s.ios.deployment_target = '14.0'
  s.swift_version = '5.3'
  s.source_files = 'poc_aro_4/Classes/**/*'

end
