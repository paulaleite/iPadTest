//
//  ListViewController.swift
//  iPadMultipleScreens
//
//  Created by Paula Leite on 24/03/20.
//  Copyright © 2020 Paula Leite. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var notes: [Note] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        notes = createArray()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func createArray() -> [Note] {
        
        var tempNotes: [Note] = []
        
        let note1 = Note(noteTitle: "Test1", noteContent: "This is a note about something", noteTime: "24/03")
        let note2 = Note(noteTitle: "Test2", noteContent: "This is a note about something 2", noteTime: "25/03")
        let note3 = Note(noteTitle: "Test3", noteContent: "This is a note about something 3", noteTime: "26/03")
        let note4 = Note(noteTitle: "Test4", noteContent: "This is a note about something 4", noteTime: "27/03")
        let note5 = Note(noteTitle: "Test5", noteContent: "This is a note about something 5", noteTime: "28/03")
        let note6 = Note(noteTitle: "Test6", noteContent: "This is a note about something 6", noteTime: "29/03")
        
        tempNotes.append(note1)
        tempNotes.append(note2)
        tempNotes.append(note3)
        tempNotes.append(note4)
        tempNotes.append(note5)
        tempNotes.append(note6)
        
        return tempNotes
    }

}

extension ListViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let note = notes[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "noteCell") as! ListTableViewCell
        
        cell.setNote(note: note)
        
        return cell
    }
}
