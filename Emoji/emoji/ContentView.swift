import SwiftUI

enum Emoji: String, CaseIterable {
    case cool = "😎"
    case angry = "😤"
    case love = "😍"
    case devil = "😈"
}

struct ContentView: View {
    @State private var selection: Emoji = .cool

    var body: some View {
        NavigationView{
            VStack {
                Text(selection.rawValue)
                    .font(.system(size: 150))
                
                Picker("Select Emoji", selection: $selection) {
                    ForEach(Emoji.allCases, id: \.self) { emoji in
                        Text(emoji.rawValue)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            .navigationTitle("Emoji Test!")
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
