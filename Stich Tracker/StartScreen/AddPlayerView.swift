import SwiftUI

struct AddPlayerView: View {
  @State var playerName: String
  @ObservedObject var gameBoard: GameBoard

  var body: some View {
    HStack {
      Image(systemName: "person.fill")
        .resizable()
        .frame(width: 16, height: 16)

      TextField("Player name", text: $playerName)
        .fixedSize()
        .frame(width: 300, height: 32)

      Button(action: {
        self.gameBoard.players = [Player(name: self.playerName)]
      }) {
        Image(systemName: "plus.circle.fill")
          .resizable()
          .frame(width: 32, height: 32)
      }

    }
    .padding()
  }
}

struct AddPlayerView_Previews: PreviewProvider {
  static var previews: some View {
    AddPlayerView(playerName: "Duc", gameBoard: GameBoard())
  }
}
