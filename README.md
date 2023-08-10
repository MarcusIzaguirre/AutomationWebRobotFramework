# End-to-end Testing with Robot Framework
Sample project to demonstrate end-to-end (e2e) tests written with RobotFramework

## Pre-requirements
To clone and run this project, you will need:

- git (I've used version 2.34.1 while writing this doc)
- python (I've used version 3.11.1)
- vscode (I've used version 1.81.0 while writing this doc)
- robot framework (I've used version 6.0.2)

## Installation
To install the Robot Framework:
- Type in your prompt: pip install robotframework


## Running the tests
In this project, you can run tests in interactive and headless modes:

- Headless mode:
robot -d ./results -v BROWSER:headlesschrome tests\TestRedeSaoLuiz.robot

- Interactive mode:
robot -d ./results -t "scenario" TestRedeSaoLuiz.robot