class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    rootViewController = TestViewController.alloc.init
    # rootViewController.title = 'Issue5'
    # rootViewController.view.backgroundColor = UIColor.whiteColor

    navigationController = UINavigationController.alloc.initWithRootViewController(rootViewController)

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = navigationController
    @window.makeKeyAndVisible

    true
  end
end
