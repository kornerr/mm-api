import Combine

extension LoginUI {
  public final class VM: ObservableObject {
    @Published public var host = ""
    @Published public var hostLabel = ""
    @Published public var hostLogo: UIImage?
    @Published public var hostName = ""
    @Published public var isLoadingSystemInfo = false
    @Published public var password = ""
    @Published public var passwordLabel = ""
    @Published public var username = ""
    @Published public var usernameLabel = ""
    @Published public var version = ""

    public let signIn = PassthroughSubject<Void, Never>()

    private var subscriptions = [AnyCancellable]()

    public init() { }

    public var labelWidth: CGFloat {
      let font = UIFont.preferredFont(forTextStyle: .body)
      let attrs = [NSAttributedString.Key.font: font]
      let hl = (hostLabel as NSString).size(withAttributes: attrs).width
      let pl = (passwordLabel as NSString).size(withAttributes: attrs).width
      let ul = (usernameLabel as NSString).size(withAttributes: attrs).width
      let delta = (":" as NSString).size(withAttributes: attrs).width
      return max(hl, max(pl, ul)) + delta
    }

    public var hostLabelWidth: CGFloat {
      // Если идёт загрузка системной информации, то из ширины ярлыка
      // выделяем место на индикатор загрузки.
      let delta: CGFloat = isLoadingSystemInfo ? 20 + 8 : 0
      return labelWidth - delta
    }
  }
}
