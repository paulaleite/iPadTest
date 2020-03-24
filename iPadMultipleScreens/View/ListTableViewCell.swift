//
//  ListTableViewCell.swift
//  iPadMultipleScreens
//
//  Created by Paula Leite on 24/03/20.
//  Copyright © 2020 Paula Leite. All rights reserved.
//

import UIKit

class ListTableViewCell: UITableViewCell {

    @IBOutlet weak var noteLabel: UILabel!
    
    @IBOutlet weak var contentLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    func setNote(note: Note) {
        noteLabel.text = note.noteTitle
        contentLabel.text = note.noteContent
        dateLabel.text = note.noteTime
    }
}
