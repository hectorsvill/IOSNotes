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

#### Head over too ViewController.swift change back ground color to white because deafault is black:

```swift
view.backgroundColor = .white
```

#

##### So your ViewController Class Should look like this:

```swift
class ViewController: UIViewController {
	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .green
	}
}
```
#

#### Go back to AppDelegate.swift to add  a navigation Controller :

```swift
func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
	window = UIWindow(frame: UIScreen.main.bounds)
	window?.makeKeyAndVisible()
	window?.rootViewController = UINavigationController(rootViewController: ViewController())
	return true
}
```

#

#### Go back to ViewController.swift 
 
 - Make ViewContrller class inherit from UITableViewDataSource and  UITableViewDelegate 
 - You will get an error, but thats O.K. just click fix.
 
 ##### Your ViewController Class should look like this:

```swift
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
	
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		
	}

	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .white
	}
}
```
#

#### Now we have to set both functions and create a constant for withIdentifier:

```swift

let cellId = "cellId"

func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
	return 4
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
	let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)	
	cell.textLabel?.text = "\(indexPath.row)"
	return cell
}

```

#

#### We wont be able to see the textlabel because we need to register :
```swift
tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
```

##### Your viewDidLoad function should look like this:
```swift
override func viewDidLoad() {
	super.viewDidLoad()
	view.backgroundColor = .white
	view.addSubview(tableView)
	tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
}

```


#

#### Create a constant for the tableView(you should have two constants):
```swift
let tableView = UITableView()
let cellId = "cellId"
```

#### But you still wont see anything becasuse we have to anchor our tableview to the ViewController
```swift

```
