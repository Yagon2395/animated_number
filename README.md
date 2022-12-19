# Animated Number flutter package

<p>This is an custom widget developed for flutter with some awesome features that will make your users more satisfied when they look into their numbers.</p>
## Features

## Preview
<img src="https://github.com/Yagon2395/YN.XFCounterLabelControl/blob/master/Images/cenarioAndroid.gif" width="300"/>

## Getting started

### Supported platforms

|             | Android | iOS  | Linux | macOS  | Web | Windows     |
|-------------|---------|------|-------|--------|-----|-------------|
| **Support** | SDK 16+ | 9.0+ | Any   | 10.11+ | Any | Any         |

## Usage
To use this plugin, add `animated_number` as a [dependency in your pubspec.yaml file](https://docs.flutter.dev/development/packages-and-plugins/using-packages).


### Examples
```dart
AnimatedNumber(
    startValue: 0,
    endValue: 2000,
    duration: Duration(seconds: 2),
    isFloatingPoint: false,
    style: TextStyle(
    color: Colors.orange,
    fontSize: 24,
    ),
)
```

```dart
AnimatedNumber(
    startValue: 0,
    endValue: 5500.38273626732,
    duration: Duration(seconds: 5),
    isFloatingPoint: true,
    decimalPoint: 4,
    style: TextStyle(
        color: Colors.lightBlue,
        fontSize: 42,
    ),
)
```

## Features
<table style="width:100%">
  <tr>
    <th>Properties</th>
    <th>Type</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>startValue</td>
    <td>num</td>
    <td>Desired start value.</td>
  </tr>
  <tr>
    <td>endValue</td>
    <td>num</td>
    <td>Desired end value.</td>
  </tr>
  <tr>
    <td>duration</td>
    <td>Duration</td>
    <td>Duration for the animation.</td>
  </tr>
  <tr>
    <td>isFloatingPoint</td>
    <td>bool</td>
    <td>Flag that controls if the iteration of the animation will be integer or floating point.</td>
  </tr>
  <tr>
    <td>decimalPoint</td>
    <td>int</td>
    <td>Desired decimal points.</td>
  </tr>
  <tr>
    <td>style</td>
    <td>TextStyle?</td>
    <td>Text style.</td>
  </tr>
  <tr>
    <td>textAlign</td>
    <td>TextAlign?</td>
    <td>How the text should be aligned horizontally.</td>
  </tr>
  <tr>
    <td>prefixText</td>
    <td>String?</td>
    <td>Desired prefix text.</td>
  </tr>
  <tr>
    <td>sufixText</td>
    <td>String?</td>
    <td>Desired sufix text.</td>
  </tr>
</table>

### Contact
<div>
  Any questions, issues or improvements feel free to contact me.
  <br>
  yagon2395@gmail.com
</div>

### License
MIT