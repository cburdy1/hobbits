import SwiftUI

struct HomeView: View {
    @EnvironmentObject var store: DataStore
    @State private var justLogged: EntryKind?

    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                BunnyLogo(size: 90)
                Text("Hi! What do you need?")
                    .font(.title2).bold()
                    .foregroundColor(HobbitsTheme.textDark)

                ForEach(EntryKind.allCases.filter { $0 != .emotion }, id: \.self) { kind in
                    Button(kind.rawValue) {
                        store.addEntry(LogEntry(kind: kind))
                        justLogged = kind
                    }
                    .buttonStyle(CuteButtonStyle())
                }

                if let logged = justLogged {
                    Text("Got it! Logged: \(logged.rawValue)")
                        .foregroundColor(HobbitsTheme.textDark)
                        .padding(.top, 8)
                }
            }
            .padding()
        }
        .background(HobbitsTheme.background.ignoresSafeArea())
    }
}
