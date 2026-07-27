import SwiftUI

struct BunnyLogo: View {
    var size: CGFloat = 100

    var body: some View {
        ZStack {
            // Ears
            HStack(spacing: size * 0.25) {
                Capsule().fill(Color.white).frame(width: size * 0.22, height: size * 0.55)
                Capsule().fill(Color.white).frame(width: size * 0.22, height: size * 0.55)
            }
            .offset(y: -size * 0.45)

            HStack(spacing: size * 0.25) {
                Capsule().fill(HobbitsTheme.softPink).frame(width: size * 0.10, height: size * 0.35)
                Capsule().fill(HobbitsTheme.softPink).frame(width: size * 0.10, height: size * 0.35)
            }
            .offset(y: -size * 0.45)

            // Face
            Circle()
                .fill(Color.white)
                .frame(width: size, height: size)
                .shadow(radius: 2)

            // Eyes
            HStack(spacing: size * 0.25) {
                Circle().fill(HobbitsTheme.textDark).frame(width: size * 0.08, height: size * 0.08)
                Circle().fill(HobbitsTheme.textDark).frame(width: size * 0.08, height: size * 0.08)
            }
            .offset(y: -size * 0.05)

            // Nose
            Circle().fill(HobbitsTheme.softPink).frame(width: size * 0.10, height: size * 0.10)
                .offset(y: size * 0.10)
        }
    }
}
