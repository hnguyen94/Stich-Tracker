import Combine
import SwiftUI

final class GameBoard: ObservableObject {
  @Published var players = [Player]()
}
