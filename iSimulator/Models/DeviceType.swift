//
//  DeviceTypes.swift
//  iSimulator
//
//  Created by 沈兆良 on 2018/3/2.
//  Copyright © 2018年 stszl.cn. All rights reserved.
//

import Foundation
import ObjectMapper

class DeviceType: Mappable {
    var name = ""
    var identifier = ""
    
    required init?(map: Map) { }
    
    func mapping(map: Map) {
        name <- map["name"]
        identifier <- map["identifier"]
    }
}
