
Pod::Spec.new do |s|
  s.name             = 'Extra2'
  s.version          = '0.1.0'
  s.summary          = '类似Android界面间传值解耦工具Extra'

  s.description      = <<-DESC
类似Android界面间传值解耦工具Extra.
                       DESC

  s.homepage         = 'https://github.com/morenotepad@163.com/Extra'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'morenotepad@163.com' => 'morenotepad@163.com' }
  s.source           = { :git => 'https://github.com/roshanman/Extra.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'Extra2/Classes/**/*'
  
end
