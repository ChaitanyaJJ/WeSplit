import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    @FocusState private var amountIsFocused: Bool

    let tipPercentages = [10, 15, 20, 25, 0]
    
    var totalPerPerson: Double {
        let peopleCount = Double(numberOfPeople + 2)
        let tipValue = Double(checkAmount) * Double(tipPercentage) / 100
        let totalValue = Double(checkAmount) + tipValue
        let amountPerPerson = totalValue / peopleCount
        return amountPerPerson
    }
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField( "Amount", value : $checkAmount , format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                        .keyboardType(.numberPad)
                        .focused($amountIsFocused)
                    
                    
                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(2..<100) {
                            Text("\($0) people")
                        }
                    }
                    .pickerStyle(.navigationLink)

                }
                
                Section("How much do you wanna tip?") {
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(tipPercentages, id: \.self) {
                            Text($0, format : .percent)
                        }
                    }
                    .pickerStyle(.segmented)
                    
                }
                
                Section{
                    Text(totalPerPerson, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
            }
            .navigationTitle("WeSplit")
            .toolbar{
                if amountIsFocused {
                    Button("Done"){
                        amountIsFocused = false
                    }
                }
            }
        }
        
    }
}

#Preview {
    ContentView()
}
