# PasswordMasker
Password Masking Framework
==============

Simple framework for masking password completely to selected input textfields when giving presentations. This framework can also be used by the developer to manually toggle the masking of passwords.

How to install
==============

**Carthage**


1. Add the line ' github "w31ha0/PasswordMasker" "master" ' to Cartfile


2. Run " carthage update --platform iOS "


3. Open project in Xcode


4. Click on project > General > Embedded Libraries > Add the PasswordMasking Framework from the Carthage/Build folder


5. Import the framework via the "import PasswordMasking" line

Usage
==============

**Auto Mode**

Auto Mode is used if certain text inputs are desired to be masked automatically when an external display is connected to the device, such as during a presentation. On disconnecting the external display, the text inputs return to the original visiblity mode.


Tag the UITextFields that you wish to mask automatically by calling the maskInput(MASKINGMODE.AUTO) method on them. The parameter represents the mode of masking, which is "auto" mode in this case.


```
@IBOutlet weak var textfield2: UITextField!
....
textfield2.maskInput(MASKINGMODE.AUTO)
```


**Manual Mode**

Manual mode can be used in two ways. To begin using the manual mode, call the maskInput method again on the textfields that you wish to tag, but this time with a parameter of MASKINGMODE.MANUAL instead.


```
@IBOutlet weak var textfield2: UITextField!
....
textfield2.maskInput(MASKINGMODE.MANUAL)
```


The first way of using the manual mode comes with a pre-built switch that allows users to manually toggle the masking of the passwords. This can be used by instantiating the MaskingSwitch object and adding it to your view.

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


**NOTE: These 2 manual modes of operation will only affect textfields that have been tagged with the manual mode.Textfields tagged with auto mode will not be affected.**
