//
//  main.swift
//  antipop
//
//  Created by Matyáš Kříž on 11/10/2018.
//  Copyright © 2018 Spark Inc. All rights reserved.
//

import Foundation
import AppKit

let speech = NSSpeechSynthesizer(voice: nil)
while true {
    speech?.startSpeaking(" ")
    sleep(15)
}
