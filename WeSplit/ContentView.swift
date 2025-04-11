import SwiftUI

struct ContentView: View {
    
    let students = ["Harry","Ron","Hermione"]
    @State private var selectedStudent = "Harry"
    
    var body: some View {
        
        NavigationStack{
            Form{
                Picker("Select Student", selection: $selectedStudent) {
                    ForEach(students, id: \.self) {
                        Text($0)
                    }
                }
            }
            .navigationBarTitle("Select Student")
        }
    }
}

#Preview {
    ContentView()
}
