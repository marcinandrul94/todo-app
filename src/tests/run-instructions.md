# todo-app-robotframework

This is a automated tests framework for https://wc-react-todo-app.netlify.app/.

## Installation
Test framework requires Python 3, packages specified in requirements text and plugin Robot Framework Language Server (Visual Studio Code or Pycharm).

## Running Tests

To run tests locally use the following command: robot -d Results -i <tag_name> .

-d Results creates 'Results' folder with 3 report files in html and xml format.

-i <tag_name> runs tests with tag name specified. Use 'E2E' to run all tests.

Example command to run the whole test suite: robot -d Results -i E2E . 

To run test cases separately, use specific tag in [Tags] sections of the test case. 