//
//  String+Localized.swift
//  LocalizedStrings
//
//  Created by Maciej Piotrowski on 12/11/16.
//  Copyright © 2016 Maciej Piotrowski. All rights reserved.
//

import Foundation

func NSLocalizedString(_ key: String) -> String {
    return NSLocalizedString(key, comment: "")
}

//MARK: Welcome Screen
extension String {
    static let Hello = NSLocalizedString("Hello!")
    static let ImpressMe = NSLocalizedString("Impress Me!")
    static let ThisApplicationIsCreated = NSLocalizedString("This application is created by the swifting.io team")
    static let OpsNoFeature = NSLocalizedString("Ops! It looks like this feature haven't been implemented yet :(!")
    static let OK = NSLocalizedString("OK")
}

//MARK: Another Screen
extension String {
    static let YetAnotherString = NSLocalizedString("Yet Another String")
}
