import Login
import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
  var window: UIWindow?
  var loginS: Login.Service?

  func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    let vc = UIViewController()
    vc.view.backgroundColor = .white

    window = UIWindow(frame: UIScreen.main.bounds)
    window?.rootViewController = vc
    window?.makeKeyAndVisible()

    loginS = Login.Service()

    return true
  }
}
