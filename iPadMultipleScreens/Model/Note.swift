//
//  Content.swift
//  iPadMultipleScreens
//
//  Created by Paula Leite on 24/03/20.
//  Copyright © 2020 Paula Leite. All rights reserved.
//

import Foundation

class Note {
    var noteTitle: String
    var noteContent: String
    var noteTime: String
    
    init(noteTitle: String, noteContent: String, noteTime: String) {
        self.noteTitle = noteTitle
        self.noteContent = noteContent
        self.noteTime = noteTime
    }
}
