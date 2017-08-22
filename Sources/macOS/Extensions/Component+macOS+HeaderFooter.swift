import Cocoa

extension Component {

  func setupHeader() {
    guard let header = model.header, headerView == nil else {
      return
    }

    if let (_, headerView) = Configuration.views.make(header.kind) {
      if let headerView = headerView {
        self.headerView = headerView
        reloadHeader()
        scrollView.addSubview(headerView)
      }
    }
  }

  func setupFooter() {
    guard let footer = model.footer, footerView == nil else {
      return
    }

    if let (_, footerView) = Configuration.views.make(footer.kind) {
      if let footerView = footerView {
        self.footerView = footerView
        reloadFooter()
        scrollView.addSubview(footerView)
      }
    }
  }

  func layoutHeaderFooterViews(_ size: CGSize) {
    headerView?.frame.size.width = size.width
    footerView?.frame.size.width = size.width
    footerView?.frame.origin.y = scrollView.frame.height - footerHeight
  }
}
