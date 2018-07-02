//
//  Shell.swift
//  iSimulator
//
//  Created by 沈兆良 on 2018/3/2.
//  Copyright © 2018年 stszl.cn. All rights reserved.
//

import Foundation

@discardableResult
func shell(_ launchPath: String, arguments: String...) -> (String, String) {
    let process = Process()
    process.launchPath = launchPath
    process.arguments = arguments
    let outputPipe = Pipe()
    let errorPipe = Pipe()
    process.standardOutput = outputPipe
    process.standardError = errorPipe
    process.launch()
    
    
    let outputData = outputPipe.fileHandleForReading.readDataToEndOfFile()
    let outputStr = String(data: outputData, encoding: String.Encoding.utf8)
    let errorData = errorPipe.fileHandleForReading.readDataToEndOfFile()
    let errorStr = String(data: errorData, encoding: String.Encoding.utf8)
    
    return (outputStr ?? "", errorStr ?? "")
}
