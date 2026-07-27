import SwiftUI

struct HobbitsTheme {
    static let skyBlue = Color(red: 0.80, green: 0.90, blue: 1.0)
    static let mintGreen = Color(red: 0.80, green: 0.95, blue: 0.85)
    static let softPink = Color(red: 1.0, green: 0.85, blue: 0.90) // bunny nose/ears accent
    static let textDark = Color(red: 0.25, green: 0.25, blue: 0.30)

    static var background: LinearGradient {
        LinearGradient(colors: [skyBlue, mintGreen], startPoint: .top, endPoint: .bottom)
    }
}

struct CuteButtonStyle: ButtonStyle {
    var color: Color = HobbitsTheme.mintGreen
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.headline)
            .foregroundColor(HobbitsTheme.textDark)
            .padding()
            .frame(maxWidth: .infinity)
            .background(color)
            .cornerRadius(20)
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
            .shadow(radius: 2)
    }
}
