# Midi Setup

## :o: Install Applications

:one: Install `vmpk` using brew package manager

```
brew install vmpk
```

:two: Install `Sforzando` manually

https://www.plogue.com/products/sforzando.html


## :a: Install Devices 

:zero: Install a bluetooth device on :apple: `Mac`

- [ ] :musical_keyboard: Enable `bluetooth` on a device - for example on the [Roland FP-30](https://www.roland.com/ca/products/fp-30/)

* Switch the Device `ON`
* press `Function` key and `A0` key together to set MIDI `ON` 
* press `Function` key and `C1` key together to `Transmit` and `Receive` MIDI messages

:x: (`A1` to set MIDI `OFF` to reset the process) and restart :recycle:

:bookmark: References [FP-30 Quick Start 07 "Bluetooth"](https://www.youtube.com/watch?v=OtDxVKbbnFo&t=22s)

- [ ] Connect the `Bluetooth` device through the Mac's :gear: `System Preferences` 

<img src="images/SystemPreferencesBluetooth.png" width="379" height="267" alt="System Preferences Bluetooth"></img>

:bulb: The `Function` button on the Roland FP-30 should turn blue :blue_square:

- [ ] Open the `Audio MIDI Setup` Application Utility using  :mag: `Spotlight Search` CMD+SPACE

<img src="images/AudioMidiSetup.png" width="276" height="160" alt="AUDI Midi Setup"></img>

- [ ] Open the `MIDI Studio` View and connect using the :two:, :three: steps

<img src="images/MIDIStudioBluetoothConfiguration.png" width="389" height="195" alt="AUDI Midi Setup"></img>

- [ ] Check the `bluetooth` device appears in the window

<img src="images/MIDIStudioFP-30Driver.png" width="297" height="177" alt=""></img>

- [ ] Edit the `bluetooth` device, or leave at `default` settings

<img src="images/MIDIStudioFP-30DriverProperties.png" width="294" height="311" alt=""></img>


- [x] Install ghci version 8.6.5 see [Installation](http://www.euterpea.com/download-and-installation/) for details (old)

## :b: Start the `REPL` 

- [ ] start the `cabal` REPL to capture all the libraries

```
% cabal repl
Build profile: -w ghc-8.10.7 -O1
...
```

- [ ] import `Euterpea` Library

```
*MyLib> import Euterpea
```

- [ ] Read the `MIDI` Devices

```
*MyLib Euterpea> devices

Input devices: 
  InputDeviceID 0	FP-30 Bluetooth
  InputDeviceID 1	VMPK Output

Output devices: 
  OutputDeviceID 2	FP-30 Bluetooth
  OutputDeviceID 3	VMPK Input
  OutputDeviceID 4	sforzando
```

- [ ] Play a tune using the default MIDI device - :id: :zero:

```
*MyLib Euterpea> play $ line [c 4 qn, c 4 qn, g 4 qn, g 4 qn, a 4 qn, a 4 qn, g 4 hn]
```

- [ ] Play a tune by selectind the MIDI device - :id: :four:


```
*MyLib Euterpea> playDev 4 $ line [f 4 qn , f 4 qn, e 4 qn, e 4 qn, d 4 qn, d 4 qn, c 4 wn ]
```
