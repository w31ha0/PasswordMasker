# PasswordMasker
Password Masking Framework
==============

Simple framework for masking password completely to selected input textfields when giving presentations. This framework can also be extended to be used by the developer to manually toggle the masking of passwords.

How to install
==============

**Manual**

1. Open project in Xcode


2. Click on project > General > Embedded Libraries > Add the PasswordMasking Framework


3. Begin using by "import PasswordMasking"

Usage
==============
** Auto Mode **

Auto Mode is used if certain text inputs are desired to be masked completely automatically when an external display is connected to the device, such as during a presentation. On disconnecting the external display, the text inputs will return to the original mode.


Tag the UITextFields that you wish to mask automatically by calling the maskInput(1) method on the textfields. The 1 in the parameter represents the mode of masking, which is "auto" mode in this case.


```
@IBOutlet weak var textfield2: UITextField!
....
textfield2.maskInput(1)
```


** Manual Mode **

Manual mode can be used in two ways. The first way comes with a pre-built switch that allows users to manually toggle the masking of the passwords. This can be used by instantiating the MaskingSwitch object and adding it to your view.

 ```
 let customSwitch = MaskingSwitch()
 view.addSubview(customSwitch)
 ```

The second way of using the manual mode is by calling the class function "toggle" from the TapToggle class to manually toggle the masking of text inputs. For example, this can be easily coupled with the TapGestureRecongizer to allow users to toggle the masking of passwords with a double tap of the screen.

```
let tap = UITapGestureRecognizer(target: self, action: "doubleTapped")
tap.numberOfTapsRequired = 2

    func doubleTapped() {
       TapToggle.toggle()
    }
    
```

