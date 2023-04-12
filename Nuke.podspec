Pod::Spec.new do |s|
    s.name             = 'Nuke'
    s.version          = '12.1.0.2'
    s.summary          = 'A powerful image loading and caching system'
    s.description  = <<-EOS
    A powerful image loading and caching system which makes simple tasks like loading images into views extremely simple, while also supporting more advanced features for more demanding apps.
    EOS

    s.homepage         = 'https://github.com/kean/Nuke'
    s.license          = 'MIT'
    s.author           = 'Alexander Grebenyuk'
    s.source           = { :git => 'https://github.com/gordontucker/NukePod.git', :tag => s.version.to_s }

    s.swift_versions = ['5.1', '5.2', '5.3', '5.4', '5.5']

    s.ios.deployment_target = '13.0'

    s.subspec 'Core' do |s|
      s.source_files = 'Sources/Nuke/**/*.swift'
    end
    
    s.subspec 'Extensions' do |s|
      s.dependency 'Nuke/Core'
      s.source_files = 'Sources/NukeExtensions/**/*.swift'
    end
     
    s.subspec 'Video' do |s|
      s.dependency 'Nuke/Core'
      s.source_files = 'Sources/NukeVideo/**/*.swift'
    end
end
