//
//  FlutterIosFramework.swift
//  flutter_ios_framework
//
//  Created by Gonçalo Montes Palma on 08/07/2019.
//  Copyright © 2019 Gonçalo Montes Palma. All rights reserved.
//

import Foundation

class FlutterIosFramework {
    open func presentFirstViewControllerOn(_ viewController:UIViewController) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "idFrameworkVC") as! FlutterController
        viewController.present(nextViewController, animated:true, completion:nil)
    }
}


