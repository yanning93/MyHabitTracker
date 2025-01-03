//
//  MyHabitTrackerApp.swift
//  MyHabitTracker
//
//  Created by Coco&Oli on 2025/1/3.
//

import SwiftUI

@main
struct MyHabitTrackerApp: App {
    var body: some Scene {
        WindowGroup {
            VStack(spacing: 20) {
                TimeDisplayView()
                    .padding(.top)
                
                CalendarView()
            }
        }
    }
}