import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
  var window: UIWindow?
  func scene (_scene: UIScene, willConnectedToSession: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
    guard let scene = (scene as? UIWindowScene) else { return } 
    let navigationController = UINavigationController (rootViewController: ViewController())
    window = UIWindow (windowScene: scene)
    window?.rootViewController = navigationController
    window?.makeKeyAndVisible()
  }
}
