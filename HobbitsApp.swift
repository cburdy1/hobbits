import SwiftUI

@main
struct HobbitsApp: App {
    @StateObject var store = DataStore()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(store)
        }
    }
}
