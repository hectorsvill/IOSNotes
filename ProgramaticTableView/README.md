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

```swift
func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
	window = UIWindow(frame: UIScreen.main.bounds)
	window?.makeKeyAndVisible()
	window?.rootViewController = ViewController()
	return true
}

```
#

#### Head over too ViewController.swift change back ground color to white because deafault is black

```swift
view.backgroundColor = .white
```

#

##### So your ViewController Class Should look like this

```swift
class ViewController: UIViewController {
	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .green
	}
}
```
#

#### Go back to AppDelegate.swift to add  a navigation Controller 

```swift
func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
	window = UIWindow(frame: UIScreen.main.bounds)
	window?.makeKeyAndVisible()
	window?.rootViewController = UINavigationController(rootViewController: ViewController())
	return true
}
```

#### 
