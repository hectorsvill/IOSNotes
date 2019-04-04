## Basic UITableView
#
#
#### Delete following files:
- Main.storyboard
- LaunchScreen.storyboard
- also remove Main from Main InterFace

#
#
##### Open AppDelegate.swift and go to this function:

```swift

func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
	// Override point for customization after application launch.
	return true
}

```
#### Now add this code:

```'swift
func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
	window = UIWindow(frame: UIScreen.main.bounds)
	window?.makeKeyAndVisible()
	window?.rootViewController = ViewController()
	return true
}

```

#### Head over too ViewController.swift chage back ground color to green

```swift
view.backgroundColor = .green
```
##### So your ViewController Class Should look like this

```swift
class ViewController: UIViewController {
	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .green
	}
}
```


