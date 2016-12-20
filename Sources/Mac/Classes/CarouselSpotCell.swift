import Cocoa
import Brick

class CarouselSpotCell: NSCollectionViewItem, SpotConfigurable {

  var preferredViewSize: CGSize = CGSize(width: 0, height: 120)

  func configure(_ item: inout Item) {
    view.wantsLayer = true
    view.layer?.backgroundColor = NSColor.red.cgColor
  }
}
