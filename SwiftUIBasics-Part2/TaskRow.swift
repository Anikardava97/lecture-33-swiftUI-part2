//
//  TaskRow.swift
//  SwiftUIBasics-Part2
//
//  Created by Ani's Mac on 09.12.23.
//

import SwiftUI

struct TaskRow: View {
    @Binding var task: Task
    
    var body: some View {
        VStack(spacing: 12) {
            HStack(spacing: 0) {
                Rectangle()
                    .foregroundStyle(task.backgroundColor)
                    .frame(width: 16, height: 80)
                
                HStack {
                    VStack(alignment: .leading, spacing: 10) {
                        Text(task.name)
                            .font(.system(size: 16))
                            .foregroundStyle(.white)
                        
                        HStack(spacing: 8) {
                            Image(systemName: "calendar")
                                .resizable()
                                .scaledToFit()
                                .foregroundStyle(.white)
                                .frame(width: 16, height: 16)
                            
                            Text(task.date)
                                .font(.system(size: 14))
                                .foregroundStyle(.white).opacity(0.8)
                        }
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        task.isDone.toggle()
                    }) {
                        Image(systemName: task.isDone ? "checkmark.circle.fill" : "circle")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(Color(red: 186/255, green: 131/255, blue: 222/255))
                            .frame(width: 26, height: 26)
                    }
                }
                .padding()
                .frame(height: 80)
                .background(Color(red: 31/155, green: 31/155, blue: 31/155))
            }
            .cornerRadius(8)
        }
    }
}

#Preview {
    TaskRow(task: .constant(tasks[0]))
}
