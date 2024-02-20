# PAtools Integration Layer

This layer is the data transfer layer between a plugin and the PAtools runtime. The exported XML has all the channels pre-configured to match the channels in the BTS-Capablities API. If your BTS Plugin uses the BTS-Capabilities API, the module should be a direct import.

## Getting Started

This workflow requires the following software

- PAtools 8.3+
- NI Package Builder

## Building

To prepare your module for use in BTS, you must package the module as an nipkg. This package will be used by PAconfigurator when defining an application. BTS will ensure that this package is installed during test generation and runtime.

1. Import the Template Module XML file from this repo into your PAtools DB.
1. Copy and configure that template to match your Cycler's needs.
1. Use PAcontroller to test your changes.
1. Export the new XML from PAconfigurator and overwrite the file in this repo.
1. Open the PackageModule.pbs in NI Package Builder.
1. Update the Package Builder solution to include your exported XML.
1. Update the Package Builder solution to have a proper name and other package details.
1. Build the NIPB solution.
1. Commit your changes.

Your output package is now available for import into BTS and into other user's PAtools Databases. Releasing on github's releases page is common.

## Installing

NI Packages for these devices will install XML files into the `%PUBLIC%\Documents\National Instruments\BTS Plugins\PATools Integration Plugins` directory and can then be imported into other databases.