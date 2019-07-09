# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

#flutter_application_path = './flutter_embedding'
#eval(File.read(File.join(flutter_application_path, '.ios', 'Flutter', 'podhelper.rb')), binding)


target 'flutter_ios_framework' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for flutter_ios_framework
  pod 'Flutter', :path => "./flutter_embedding/.ios/Flutter/engine"
  pod 'FlutterPluginRegistrant', :path => "./flutter_embedding/.ios/Flutter/FlutterPluginRegistrant"


end

post_install do |installer|
  installer.pods_project.targets.each do |target|
      target.build_configurations.each do |config|
          config.build_settings['ENABLE_BITCODE'] = 'NO'
          next if  config.base_configuration_reference == nil
          xcconfig_path = config.base_configuration_reference.real_path
          File.open(xcconfig_path, 'a+') do |file|
              file.puts "#include \"#{File.realpath(File.join("./flutter_embedding/.ios/Flutter", 'Generated.xcconfig'))}\""
          end
      end
  end
end