import UIKit

class TabBerController: TabBarController {
  let tabBerController = UITabBarController()
  let friendsController = FriendsController()
  let groupsController = GroupsController()
  let photosController = PhotosController()
  friendsController.tabBarItem.title = "Friends"
  groupsController.tabbarItem.title = "Groups"
  photosController.tabBarItem.title = "Photos"
  let controllers = [friendsController, groupsController, PhotosController]
  tabBerController.viewControllers = controllers
}
