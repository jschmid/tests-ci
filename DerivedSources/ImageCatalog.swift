// Generated using SwiftGen, by O.Halligon — https://github.com/AliSoftware/SwiftGen

import Foundation
import UIKit

extension UIImage {
  enum Asset : String {
    case Monkey = "monkey"

    var image: UIImage {
      return UIImage(asset: self)
    }
  }

  convenience init!(asset: Asset) {
    self.init(named: asset.rawValue)
  }
}
