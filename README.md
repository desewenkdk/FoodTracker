#  Tutorial...
adding readme

building basic IOS app

building IOS app following Apple official tutorial

## Signal SIGABRT has appeard...
* check these.
  * You created a new view controller in Interface Builder, and set it up with a few UI elements like buttons and labels
  
  * You connected these UI elements to your code by using outlet properties, which creates a connection between a property of your view controller and the UI element in Interface Builder
  
  * At one point *you changed the name* of the initial outlet property and your app started crashing with a SIGABRT error!!
  
  * Or, you maybe add outlet, and *delete just on code*, *property is still alive in storyboard*

* ![signal sigabrt](https://learnappmaking.com/wp-content/uploads/2018/11/sigabrt-xcode-2.jpg)

## Connect the UI to code

### Target-action Pattern
![target-action](https://developer.apple.com/library/archive/referencelibrary/GettingStarted/DevelopiOSAppsSwift/Art/CUIC_sim_defaulttext_2x.png)
* 1. The event is the user **tapping the Set Default Text button.**

* 2. The *action* is *setDefaultLabelText(_).*

* 3. The *target* is *ViewController* (where the **action method is defined**).

* 4. The *sender* is the *Set Default Label Text button.*

### Process User Input - UITextFieldDelegate
* By adopting the UITextFieldDelegate protocol, you tell the compiler that the ViewController class can act as a valid text field delegate. This means you can implement the protocol’s methods to handle text input, and you can assign instances of the ViewController class as the delegate of the text field.

```swift
override func viewDidLoad() {
super.viewDidLoad()
// Do any additional setup after loading the view, typically from a nib.
nameTextField.delegate = self/*ViewController class itself*/;
}
```

```swift
func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//Hide the Keyboard
textField.resignFirstResponder()
return true
}
```
* Tab textfields-> textfield becomes a *first responder* ->  displays keyboard, get inputs -> after typing, keyboard must disappear, ->  taps a button to end editing in the text field. You do this in the textFieldShouldReturn(_:) method, which gets called when the user taps Return (or in this case, Done) on the keyboard.
    * Object that is first on the line for receiving many kinds of app events, including key events, motion events, and action messages, among others.
    
```swift
/*
The textFieldDidEndEditing(_:) method gives you a chance to read the information entered into the text field and do something with it.
*/
func textFieldDidEndEditing(_ textField: UITextField){
mealNameLabel.text = textField.text
}

*func textFieldShouldReturn(_ textField: UITextField) -> Bool { *
*
```
* when design UI....
    * Delete Code, and also delete **Received Actions!!**

### Strong, Weak.
* Memory management tactics of IOS.
* Strong
    * strong reference, 객체를 소유하여, 래퍼런스 카운트가 증가하는 프로퍼티
    * 뷰 컨트롤러에서, 뷰의 property -
    
    
## Variables in Swift
* in Swift, all variables are "Class". so, all variables has "Attributes"
* **let - constant** ,  **var - variable**

## Work with View Controllers

### nuanced distinction between views and controls

* views : *labels, image views*

* controls *text fields, buttons*
