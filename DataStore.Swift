import Foundation

class DataStore: ObservableObject {
    @Published var entries: [LogEntry] = []

    func addEntry(_ entry: LogEntry) {
        entries.insert(entry, at: 0) // newest first
    }
}
