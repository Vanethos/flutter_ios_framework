# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

flutter_application_path = './flutter_embedding'
eval(File.read(File.join(flutter_application_path, '.ios', 'Flutter', 'podhelper.rb')), binding)

post_install do |installer_representation|
  installer_representation.project.targets.each do |target|
      target.build_configurations.each do |config|
          config.build_settings['CLANG_WARN_DIRECT_OBJC_ISA_USAGE'] = 'YES'
      end
  end
end

target 'flutter_ios_framework' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for flutter_ios_framework

end
