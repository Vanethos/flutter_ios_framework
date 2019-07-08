//
//  AppDelegate.swift
//  flutter_ios_embedding
//
//  Created by Gonçalo Montes Palma on 08/07/2019.
//  Copyright © 2019 Gonçalo Montes Palma. All rights reserved.
//

import UIKit
import Flutter
import FlutterPluginRegistrant // Only if you have Flutter Plugins.

@UIApplicationMain
class AppDelegate: FlutterAppDelegate {
    var flutterEngine : FlutterEngine?;
    // Only if you have Flutter plugins.
    override func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.flutterEngine = FlutterEngine(name: "io.flutter", project: nil);
        self.flutterEngine?.run(withEntrypoint: nil);
        GeneratedPluginRegistrant.register(with: self.flutterEngine);
        return super.application(application, didFinishLaunchingWithOptions: launchOptions);
    }
}

