//
//  Pair.swift
//  iSimulator
//
//  Created by 沈兆良 on 2018/3/2.
//  Copyright © 2018年 stszl.cn. All rights reserved.
//

import Foundation
import ObjectMapper

class Pair: Mappable {
    var watch: Device?
    var phone: Device?
    var state = ""
    required init?(map: Map) { }
    
    func mapping(map: Map) {
        watch <- map["watch"]
        phone <- map["phone"]
        state <- map["state"]
    }
}
