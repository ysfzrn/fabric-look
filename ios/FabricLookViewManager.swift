//
//  FabricLookViewManager.swift
//  react-native-fabric-look
//
//  Created by Yusuf Zeren on 20.05.2023.
//

import React
import UIKit

@objc(FabricLookViewManager)
public class FabricLookViewManager: RCTViewManager {
    var myView: FabricLookComponent?
    
    
    public override func view() -> (FabricLookComponent) {
        myView = FabricLookComponent()
        return myView!
    }
    
    func methodQueue() -> DispatchQueue {
        return bridge.uiManager.methodQueue
    }
    @objc public override static func requiresMainQueueSetup() -> Bool {
        return false
    }

}
