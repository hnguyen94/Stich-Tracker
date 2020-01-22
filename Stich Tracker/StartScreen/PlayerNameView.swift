import SwiftUI

struct PlayerNameView: View {
  @State var playerName: String

    var body: some View {
      HStack {
        Text(playerName)

        Button(action: {

        }) {
          Image(systemName: "xmark")
        }
      }
    }
}

struct PlayerNameView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerNameView(playerName: "Duc")
    }
}
