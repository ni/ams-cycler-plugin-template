# ams-cycler-plugin-template

This repository contains a template for building a Battery Lab Software Plugin for a Cycler to use with PAtools.
It requires the [AMS Capabilities](https://github.com/ni/ams-capabilities).

## Supported Versions

- PAtools 8.7+
- LinuxRT 25Q4+
- LabVIEW 2023Q3+
- AMS Capabilities API 2.0+
- ADAS Replay HIL Development Suite 25Q4+

# Create your own plugin
Make sure you read the [AMS Capabilities README](https://github.com/ni/ams-capabilities). [Here](https://github.com/ni/ams-capabilities/blob/main/AMSTEMPLATES.md) it is described how to create your own plugin and how to test it.

# PAtools Integration
see [PAtools Integration Readme](/patools-integration/PAtools%20Integration%20README.md)


# Cycler Plugin Description

* The cycler plugin takes in user inputs to control the system and values and then output the set values for items such as the voltage, power, and current of the device. The cycler is dynamic and has a high current.
* To initialize and close channels used in the cycler plugin: In Create Channels.vi, wire in the Cycler Initialize.vi and in Destroy Channels.vi use the Cycler Close.vi. The AMS capabilities Cycler high level capabilities Close.vi and Initialize.vi initialize and close all of the VI and classes that are implemented.
* As a part of the simulation, some of the tasks that are done by the Process Data.vi include checking the conditions that on off and output enable are set to true before setting values, checking the range of current, voltage, and power, applying the gradient to control the rate at which the values change, simulating noise through the addition of random numbers, setting/resetting the error status and conditions if errors are present, counting and resetting the watchdog, and selecting an output mode which uses arithmetic to output power and current.

# Helper VIs
* Control Mode Select: Reads the control mode (0, 1, 2) and outputs the current, power, and voltage accordingly. 0 is the default where all inputs are wired to their respective outputs. 1 multiplies current and voltage to output power. 2 outputs current by dividing power by voltage.
* Apply Gradient: Controls how the value of each element is changing over time
* Create element output: Takes each of the current, voltage, and power element inputs after they are passed through the Apply Gradient VI, and checks they are within the set max and min range and fixes them to be within range. If they aren't in range, an error is written to error channels. If output is enabled and it OnOff is true, there will be simulated noise added to each of the now in range elements, and the values will be passed to the outputs.
* Control Simu: Handles the simulation for the control values
* Measure Simu: Handles the simulation for the channel values