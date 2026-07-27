import Foundation

enum EntryKind: String, CaseIterable, Codable {
    case potty = "Need the Bathroom 🚻"
    case headphones = "Put on Headphones 🎧"
    case askAdult = "Ask an Adult 🙋"
    case quietSpace = "Find a Quiet Space 🤫"
    case snack = "Have a Snack 🍎"
    case emotion = "Feelings Check-In 💭"
}

enum Feeling: String, CaseIterable, Codable {
    case happy = "Happy 😊"
    case sad = "Sad 😢"
    case mad = "Mad 😠"
    case scared = "Scared 😨"
    case overwhelmed = "Overwhelmed 🌀"
    case calm = "Calm 😌"
}

struct LogEntry: Identifiable, Codable {
    let id: UUID
    let kind: EntryKind
    let date: Date
    var feeling: Feeling?
    var seen: String?
    var smelled: String?
    var felt: String?

    init(kind: EntryKind, feeling: Feeling? = nil, seen: String? = nil, smelled: String? = nil, felt: String? = nil) {
        self.id = UUID()
        self.kind = kind
        self.date = Date()
        self.feeling = feeling
        self.seen = seen
        self.smelled = smelled
        self.felt = felt
    }
}
