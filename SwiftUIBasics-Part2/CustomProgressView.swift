//
//  CustomProgressView.swift
//  SwiftUIBasics-Part2
//
//  Created by Ani's Mac on 09.12.23.
//

import SwiftUI

struct CustomProgressView: View {
    
    var body: some View {
        ZStack(alignment: .leading) {
            Capsule()
                .fill(Color(red: 186/255, green: 131/255, blue: 222/255)).opacity(0.4)
                .frame(height: 18)
            
            Capsule()
                .fill(Color(red: 186/255, green: 131/255, blue: 222/255))
                .frame(width: 175, height: 18)
        }
    }
}
