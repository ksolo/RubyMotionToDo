class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)

    nav_controller = UINavigationController.alloc.initWithRootViewController(ToDosController.alloc.init)

    @window.rootViewController = nav_controller
    @window.makeKeyAndVisible
    true
  end
end
