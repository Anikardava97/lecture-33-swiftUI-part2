//
//  ToDoListView.swift
//  SwiftUIBasics-Part2
//
//  Created by Ani's Mac on 08.12.23.
//

import SwiftUI

struct ToDoListView: View {
    
    @State var taskList: [Task] = tasks
    
    private var uncompletedTaskCount: Int {
        taskList.filter { !$0.isDone }.count
    }
    
    private func allTasksCompleted() {
        for i in taskList.indices {
            taskList[i].isDone = true
        }
    }
    
    var body: some View {
        VStack(spacing: 20) {
            VStack(spacing: 32) {
                HStack {
                    Text("You have \(uncompletedTaskCount) tasks to complete")
                        .font(.system(size: 24))
                        .fontWeight(.semibold)
                        .frame(width: 188)
                        .foregroundStyle(.white)
                    
                    Spacer()
                    
                    Circle()
                        .fill(Color.avatarBackgroundColor)
                        .frame(width: 50, height: 50)
                    
                        .overlay {
                            Image("Avatar")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 44, height: 44)
                            
                                .overlay(alignment: .bottomTrailing) {
                                    Circle()
                                        .fill(.orange)
                                        .frame(width: 14, height: 14)
                                        .overlay {
                                            Text("\(uncompletedTaskCount)")
                                                .font(.system(size: 8))
                                                .foregroundStyle(.white)
                                        }
                                }
                        }
                }
                .padding(.horizontal, 20)
                
                Button {
                    allTasksCompleted()
                } label: {
                    Text("Complete All")
                        .foregroundStyle(.white)
                        .font(.system(size: 16))
                        .fontWeight(.semibold)
                        .frame(height: 54)
                        .frame(maxWidth: .infinity)
                        .background(Color.buttonBackgroundColor)
                        .cornerRadius(8)
                }
                .padding(.horizontal, 20)
            }
            
            VStack(spacing: 12) {
                Text("Progress")
                    .font(.system(size: 20))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundStyle(.white)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Daily Task")
                        .font(.system(size: 18))
                        .fontWeight(.medium)
                        .foregroundStyle(.white)
                    
                    Text("\(taskList.count - uncompletedTaskCount)/\(taskList.count) Task Completed")
                        .font(.system(size: 16))
                        .foregroundStyle(.white).opacity(0.8)
                    
                    HStack {
                        Text("Keep working")
                            .font(.system(size: 14))
                            .fontWeight(.light)
                            .foregroundStyle(.white).opacity(0.8)
                        
                        Spacer()
                        
                        Text("50%")
                            .font(.system(size: 18))
                            .foregroundStyle(.white)
                    }
                    
                    CustomProgressView()
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(16)
                .background(
                    Color.componentBackgroundColor.cornerRadius(8)
                )
            }
            .padding(.horizontal, 20)
            
            VStack(spacing: 12) {
                
                Text("Completed Tasks")
                    .font(.system(size: 20))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundStyle(.white)
                    .padding(.leading, 20)
                
                List {
                    ForEach($taskList) { $task in
                        TaskRow(task: $task)
                    }
                    .listRowBackground(Color.backgroundColor)
                }
            }
            .listStyle(.plain)
        }
        .background(Color.backgroundColor)
    }
}

#Preview {
    ToDoListView()
}

