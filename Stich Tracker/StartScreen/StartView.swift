import SwiftUI


struct StartView: View {
  // MARK: - Properties

  @State var playerName = ""
  @ObservedObject var gameBoard = GameBoard()

  var body: some View {
    VStack {
      ScrollView {
        VStack(alignment: .leading) {
          ForEach(self.gameBoard.players) { player in
            PlayerNameView(playerName: player.name)
          }
        }
      }

      AddPlayerView(playerName: playerName, gameBoard: gameBoard)

      Button(action: {
        print("Start button tapped")
      }) {
        Text("Start")
          .padding(.leading, 8)
          .padding(.trailing, 8)
          .padding(.top, 4)
          .padding(.bottom, 4)
          .foregroundColor(Color.white)
      }
      .background(Color.blue)
      .cornerRadius(6)

    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    StartView()
  }
}
