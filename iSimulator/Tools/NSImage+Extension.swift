//
//  NSImage+Extension.swift
//  iSimulator
//
//  Created by 沈兆良 on 2018/3/2.
//  Copyright © 2018年 stszl.cn. All rights reserved.
//

import Cocoa

extension NSImage {
    
    func appIcon(h:CGFloat = 35) -> NSImage {
        let size = NSSize(width: h, height: h)
        let cornerRadius: CGFloat = h/5
        guard self.isValid else {
            return self
        }
        let newImage = NSImage(size: size)

        self.size = size
        newImage.lockFocus()
        NSGraphicsContext.current?.imageInterpolation = .high
        NSGraphicsContext.saveGraphicsState()
        let path = NSBezierPath(roundedRect: NSRect(origin: NSPoint.zero, size: size), xRadius: cornerRadius, yRadius: cornerRadius)
        path.addClip()
        self.draw(at: NSPoint.zero, from: NSRect(origin: NSPoint.zero, size: size), operation: .copy, fraction: 1.0)
        NSGraphicsContext.restoreGraphicsState()
        newImage.unlockFocus()
        return newImage
    }
}

extension Array where Element:Equatable {
    func removeDuplicates() -> ([Element], [Element]) {
        var result = [Element]()
        var duplicates = [Element]()
        for value in self {
            if result.contains(value) == false {
                result.append(value)
            }else{
                duplicates.append(value)
            }
        }
        
        return (result, duplicates)
    }
}
