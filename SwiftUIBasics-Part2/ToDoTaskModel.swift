//
//  ToDoTaskModel.swift
//  SwiftUIBasics-Part2
//
//  Created by Ani's Mac on 09.12.23.
//

import SwiftUI

struct Task: Identifiable {
    let id = UUID()
    let name: String
    let date: String
    let backgroundColor: Color
    var isDone: Bool
}

var tasks = [
    Task(name: "Mobile App Research", date: "4 Oct", backgroundColor: Color(red: 250/255, green: 203/255, blue: 186/255), isDone: true),
    Task(name: "Prepare Wireframe for Main Flow", date: "4 Oct", backgroundColor: Color(red: 215/255, green: 240/255, blue: 255/255), isDone: true),
    Task(name: "Prepare Screens", date: "4 Oct", backgroundColor: Color(red: 250/255, green: 217/255, blue: 255/255), isDone: true),
    Task(name: "Website Research", date: "5 Oct", backgroundColor: Color(red: 250/255, green: 203/255, blue: 186/255), isDone: false),
    Task(name: "Prepare Wireframe for Main Flow", date: "5 Oct", backgroundColor: Color(red: 215/255, green: 240/255, blue: 255/255), isDone: false),
    Task(name: "Prepare Screens", date: "5 Oct", backgroundColor: Color(red: 250/255, green: 217/255, blue: 255/255), isDone: false)
]


