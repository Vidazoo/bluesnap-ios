//
//  BSImageLibrary.swift
//  BluesnapSDK
//
//  Created by Shevie Chen on 20/06/2017.
//  Copyright © 2017 Bluesnap. All rights reserved.
//

import Foundation

/**
 This class lets you get the icons and images used by BlueSnap IOs SDK
 */
public enum BSImageNames : String {
    case ccAmex = "cc_amex"
    case ccCirrus = "cc_cirrus"
    case ccDinersclub = "cc_dinersclub"
    case ccDiscover = "cc_discover"
    case ccJcb = "cc_jcb"
    case ccMaestro = "cc_maestro"
    case ccMastercard = "cc_mastercard"
    case ccUnionpay = "cc_unionpay"
    case ccVisa = "cc_visa"
    case ccUnknown = "cc_default"
}

public class BSImageLibrary {
    
    /**
     Returns the image from BlueSnap SDK
     - parameters:
     - name: a value from the enum above - BSImageNames
    */
    open class func getImage(_ name: BSImageNames!) -> UIImage? {
        
        return BSViewsManager.getImage(imageName: name.rawValue)
    }
    
    /**
     Returns the flag image from BlueSnap SDK
     - parameters:
     - countryCode: 2 character country code in uppercase
     */
    open class func getFlag(countryCode: String!) -> UIImage? {
        
        return BSViewsManager.getImage(imageName: countryCode)
    }
}
