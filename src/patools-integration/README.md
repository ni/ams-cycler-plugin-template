# PAtools Integration Layer

This layer is the data transfer layer between a plugin and the PAtools runtime.

## PAtools Userbox

PAtools designer files included here adhere to the BTS-Capabilities definitions for channels. If your plugin uses the BTS-Capabilities API, these Userbox files will be a great starting point.

1. Import the dsg into your database.
1. Use this imported file as a subtable for your userbox.

## Building

To prepare your module for use in BTS, you must package the module as an nipkg. This package will be used by PAconfigurator when defining an application. BTS will ensure that this package is installed during test generation and runtime.

1. 