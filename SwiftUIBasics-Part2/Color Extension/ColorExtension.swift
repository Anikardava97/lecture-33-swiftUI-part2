//
//  ColorExtension.swift
//  SwiftUIBasics-Part2
//
//  Created by Ani's Mac on 09.12.23.
//

import SwiftUI

extension Color {
    static let backgroundColor = Color(red: 2/255, green: 2/255, blue: 6/255)
    static let componentBackgroundColor =  Color(red: 24/155, green: 24/155, blue: 24/155)
    static let buttonBackgroundColor = LinearGradient(colors: [Color(red: 186/255, green: 131/255, blue: 222/255),
                                                               Color(red: 222/255, green: 131/255, blue: 176/255)],
                                                      startPoint: .leading,
                                                      endPoint: .trailing)
    
    static let avatarBackgroundColor = LinearGradient(colors: [Color(red: 186/255, green: 131/255, blue: 222/255),
                                                               Color(red: 217/255, green: 217/255, blue: 217/255)],
                                                      startPoint: .leading,
                                                      endPoint: .trailing)
}
