import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem { Label("Home", systemImage: "house.fill") }
            CheckInView()
                .tabItem { Label("Feelings", systemImage: "face.smiling") }
            HistoryView()
                .tabItem { Label("History", systemImage: "clock.fill") }
        }
        .accentColor(HobbitsTheme.textDark)
    }
}
