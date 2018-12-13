//
//  Environment.swift
//  EnvironmentPOC
//
//  Created by Govindarajan Anand on 12/13/18.
//  Copyright © 2018 JohnDeere. All rights reserved.
//

import Foundation

public enum PlistKey {
    case ServerURL
   
    var value: String {
        switch self {
        case .ServerURL:
            return "BASE_URL"
        }
    }
}

public struct Environment {
    
    fileprivate var infoDict: [String: Any]  {
        get {
            if let dict = Bundle.main.infoDictionary {
                return dict
            }else {
                fatalError("Plist file not found")
            }
        }
    }
    
    public func configuration(_ key: PlistKey) -> String {
        switch key {
        case .ServerURL:
            return infoDict[PlistKey.ServerURL.value] as! String
        }
    }
}
