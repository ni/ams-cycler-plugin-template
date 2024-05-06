# bls-cycler-plugin-template
This repository contains a template for building a Battery Lab Software Plugin for a Cycler.

## Battery Lab Software Plugin Software Architecture

![SoftwareStack](image.png)

This repo implements the lower-2 layers (in green and blue). The "Device Specific" layer is written in LabVIEW which communicates to an specific device. This repo uses the [BLS Capabilities API](https://github.com/ni/bls-capabilities) as the "Device Abstract Interfaces". The Blue "Sequence Abstraction" layer is implemented in PAtools as a database export. Eventually we will add a VeriStand implementation for this "Sequence Abstraction" layer as well.

# Creating the LabVIEW Plugin

## Supported Versions

- PAtools 8.3+
- LinuxRT 23Q3+
- LabVIEW 2023Q3+
- BLS Capabilities API 0.5+
- ADAS Replay HIL Development Suite 24Q1

1. Install the ADAS Replay and HIL AD Development Suite for LabVIEW.
1. Install the [BLS Capabilities API](https://github.com/ni/bls-capabilities).
1. Refer to the [ADAS Plugin Development](https://github.com/ni/adas-replay-hil-internal/wiki/Node-Development) to create your basic plugin.
1. Refer to the BLS Capabilities API Readme for more information.

## LinuxRT IPKs for BLS Plugins

The test/ plugin contains an example for a package which will install the lvlibp to the RT target. Follow these simple steps to update your Plugin.

1. Open your Plugin LabVIEW Project.
1. Right-click Build Specifications.
1. Select Package.
1. Under Source Files, select the lvlibp.
1. Select the blue arrow to add the lvlibp to the destination.
  - :cactus: LabVIEW will compile the lvlibp and automatically configure the directory.
1. Select Package and configure all the fields for your device.
1. Select OK.

## Build

Build both build specifications and you will get a LinuxRT IPK file which should be provided as a release. Follow the paradigm in the /test folder and the releases of this repo for more guidance.

# Creating the PAtools Integration Layer

Refer to the [PAtools Integration Layer Readme](/src/patools-integration/README.md) for more information.

# Status Flags

:cactus: Update these flags to indicate what you have built-in so far.

- To indicate you've added support for these layers
  - Change the color at the end to Green
  - Change "Unsupported" to "Supported"

![Static Badge](https://img.shields.io/badge/PAtools_Integration-Unsupported-red)
![Static Badge](https://img.shields.io/badge/VeriStand_Integration-Unsupported-red)
![Static Badge](https://img.shields.io/badge/nipkg-Unsupported-red)


# Cycler Plugin Description

* The cycler plugin takes in user inputs to control the system and values and then output the set values for items such as the voltage, power, and current of the device. The power supply is dynamic and has a high current.
* To intialize and close channels used in the cycler plugin, create channels.vi and destroy channels.vi use the close and initialize from the BLS capabilities Cycler high level capability which initialize and close all of the VI and classes that are implemented.
* As a part of the simulation, some of the tasks that are done by the process data.vi include checking the conditions that on off and output enable are set to true before setting values, checking the range of current, voltage, and power, applying the gradient to control the rate at which the values change, simulating noise through the addition of random numbers, setting/resetting the error status and conditions if errors are present, counting and resetting the watchdog, and selecting an output mode which uses arithmetic to output power and current.

# Helper VIs
* Control Mode Select: Reads the control mode (0, 1, 2) and outputs the current, power, and voltage accordingly. 0 is the default where all inputs are wired to their respective outputs. 1 multiplies current and voltage to output power. 2 outputs current by dividing power by voltage.
* Apply Gradient: Controls how the value of each element is changing over time
* Create element output: Takes each of the current, voltage, and power element inputs after they are passed through the Apply Gradient VI, and checks they are within the set max and min range and fixes them to be within range. If they aren't in range, an error is written to error channels. If output is enabled and it OnOff is true, there will be simulated noise added to each of the now in range elements, and the values will be passed to the outputs.