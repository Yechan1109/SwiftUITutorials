//
//  PracticeView3.swift
//  1.ChatPrototype
//
//  Created by t2023-m0013 on 8/8/24.
//

import SwiftUI



struct PracticeView3: View {
    
    @State private var bgColor =
    Color(.sRGB, red: 0.98, green: 0.9, blue: 0.2)
    
    @Environment(\.calendar) var calendar
    @Environment(\.timeZone) var timeZone
    
    var bounds: Range<Date> {
        let start = calendar.date(from: DateComponents(
            timeZone: timeZone, year: 2022, month: 6, day: 6))!
        let end = calendar.date(from: DateComponents(
            timeZone: timeZone, year: 2022, month: 6, day: 16))!
        return start ..< end
    }
    
    @State private var dates: Set<DateComponents> = []
    
    
    @State private var formattedDates: String = ""
    let formatter = DateFormatter()
    
    @State private var pastedText: String = ""
    
    var body: some View {
        
        ScrollView {
            
            VStack {
                PasteButton(payloadType: String.self) { strings in
                            pastedText = strings[0]
                        }
                        Divider()
                        Text(pastedText)
                        Spacer()
                
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .padding()
                ColorPicker(/*@START_MENU_TOKEN@*/"Title"/*@END_MENU_TOKEN@*/, selection: $bgColor)
                    .background(.red)
                    .padding()
                    .background(.blue)
                MultiDatePicker("Single/Multiple Date Picker", selection: $dates, in: bounds)
                
                Button(action: {
                    formatSelectedDates()
                }, label: {
                    Text("OK")
                        .font(.title3)
                })
            }
            
        }
        
    }
    
    private func formatSelectedDates() {
        formatter.dateFormat = "MMM-dd-YY"
        let selectedDates = dates
            .compactMap { date in
                Calendar.current.date(from: date)
            }
            .compactMap { date in
                formatter.string(from: date)
            }
        
        print(selectedDates)
    }
    
}


#Preview {
    PracticeView3()
}
