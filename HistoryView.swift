import SwiftUI

struct HistoryView: View {
    @EnvironmentObject var store: DataStore

    var body: some View {
        NavigationView {
            List(store.entries) { entry in
                VStack(alignment: .leading, spacing: 4) {
                    Text(entry.kind.rawValue).font(.headline)
                    Text(entry.date.formatted(date: .abbreviated, time: .shortened))
                        .font(.caption).foregroundColor(.gray)
                    if let feeling = entry.feeling {
                        Text("Feeling: \(feeling.rawValue)")
                    }
                    if let seen = entry.seen, !seen.isEmpty {
                        Text("Saw: \(seen)")
                    }
                }
                .listRowBackground(HobbitsTheme.mintGreen.opacity(0.4))
            }
            .navigationTitle("Past Entries")
        }
    }
}
