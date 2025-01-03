import SwiftUI

struct CalendarView: View {
    private let months = 1...12
    private let days = 1...31
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                // Month header row
                HStack {
                    Text("Month")
                        .frame(width: 60, alignment: .leading)
                    ForEach(months, id: \.self) { month in
                        Text("\(month)")
                            .frame(width: 30)
                    }
                }
                
                // Date rows
                ForEach(days, id: \.self) { day in
                    HStack {
                        Text("Day \(day)")
                            .frame(width: 60, alignment: .leading)
                        ForEach(months, id: \.self) { month in
                            Text("\(day)")
                                .frame(width: 30)
                                .foregroundColor(isValidDate(day: day, month: month) ? .primary : .clear)
                        }
                    }
                }
            }
            .padding()
        }
    }
    
    private func isValidDate(day: Int, month: Int) -> Bool {
        let calendar = Calendar.current
        var dateComponents = DateComponents()
        dateComponents.year = calendar.component(.year, from: Date())
        dateComponents.month = month
        dateComponents.day = day
        
        return calendar.date(from: dateComponents) != nil
    }
}

#Preview {
    CalendarView()
} 