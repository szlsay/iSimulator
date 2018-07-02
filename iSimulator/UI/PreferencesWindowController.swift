//
//  PreferencesWindowController.swift
//  iSimulator
//
//  Created by 沈兆良 on 2018/3/2.
//  Copyright © 2018年 stszl.cn. All rights reserved.
//

import Cocoa

class PreferencesWindowController: NSWindowController {
    
    static var firstTabSelectIdentifier = "General"
    @IBOutlet weak var toolBar: NSToolbar!
    
    override func windowDidLoad() {
        super.windowDidLoad()
        var frame = self.window!.frame
        frame.origin.y = 600
        self.window?.setFrame(frame, display: true, animate: false)
        let identifier = NSToolbarItem.Identifier(rawValue: PreferencesWindowController.firstTabSelectIdentifier)
        toolBar.selectedItemIdentifier = identifier
        self.tabViewSelect(withIdentifier: identifier)
    }
    
    @IBAction func toolBarAction(_ sender: NSToolbarItem) {
        self.tabViewSelect(withIdentifier: sender.itemIdentifier)
    }
    
    func tabViewSelect(withIdentifier identifier: Any) {
        let vc = self.contentViewController as! PreferencesViewController
        vc.tabView.selectTabViewItem(withIdentifier: identifier)
    }
    
}
