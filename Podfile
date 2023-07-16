# Uncomment the next line to define a global platform for your project
platform :ios, '14.0'
source 'https://github.com/CocoaPods/Specs'

target 'Example' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
  pod 'CinnoxVisitorCoreSDK', '1.0.0.2'

  # Pods for Example

  target 'ExampleTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'ExampleUITests' do
    # Pods for testing
  end
  
  target 'ExampleNotificationService' do
    inherit! :search_paths
  end

end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '14.0'
            config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION'] = 'YES'
        end
    end
end
