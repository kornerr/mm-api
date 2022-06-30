import Combine

extension LoginUI {
  public final class VM: ObservableObject {
    @Published public var host = ""
    @Published public var password = ""
    @Published public var username = ""
    @Published public var version = ""

    public let signIn = PassthroughSubject<Void, Never>()

    private var subscriptions = [AnyCancellable]()

    public init() { }
  }
}
