//
//  AppMenuItem.swift
//  iSimulator
//
//  Created by 沈兆良 on 2018/3/2.
//  Copyright © 2018年 stszl.cn. All rights reserved.
//

import Cocoa

class AppMenuItem: NSMenuItem {
    
    let app: Application
    
    init(_ app: Application) {
        self.app = app
        super.init(title: "", action: nil, keyEquivalent: "")
        self.image = app.image
        self.attributedTitle = app.attributeStr
        self.indentationLevel = 1
        self.submenu = AppMenu(app)
    }
    
    required init(coder decoder: NSCoder) {
        fatalError("init(cowder:) has not been implemented")
    }
    
}
