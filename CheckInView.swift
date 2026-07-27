import SwiftUI

struct CheckInView: View {
    @EnvironmentObject var store: DataStore
    @State private var feeling: Feeling = .happy
    @State private var seen = ""
    @State private var smelled = ""
    @State private var felt = ""
    @State private var saved = false

    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                BunnyLogo(size: 70)
                Text("How do you feel right now?")
                    .font(.title3).bold()

                Picker("Feeling", selection: $feeling) {
                    ForEach(Feeling.allCases, id: \.self) { f in
                        Text(f.rawValue).tag(f)
                    }
                }
                .pickerStyle(.wheel)

                Group {
                    TextField("Something I can see...", text: $seen)
                    TextField("Something I can smell...", text: $smelled)
                    TextField("Something I can feel...", text: $felt)
                }
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)

                Button("Save Check-In") {
                    store.addEntry(LogEntry(kind: .emotion, feeling: feeling, seen: seen, smelled: smelled, felt: felt))
                    saved = true
                    seen = ""; smelled = ""; felt = ""
                }
                .buttonStyle(CuteButtonStyle(color: HobbitsTheme.skyBlue))

                if saved {
                    Text("Saved! Great job checking in. 🐰")
                }
            }
            .padding()
        }
        .background(HobbitsTheme.background.ignoresSafeArea())
    }
}
