### Instructions

Make an question queue app JavaScript-y!

### Getting Set Up

* Install the necessary dependencies: `bundle`
* Drop the `questions_development` database with `dropdb questions_development`.
* Create the database with `createdb questions_development`.
* Create tables by running `psql questions_development < schema.sql` at the command line.
* Start the server: `ruby app.rb`
* Modify the code in `public\app.js` to satisfy the following requirements.

### Requirements necessary to Meet Expectations

* If the form for a new question is blank when submitting, the user gets an alert message.
* If the form is not empty, prevent the default action from happening, and post the new question via the AJAX function provided.
* Upon successful posting of data, update the unordered list with the new question. The list should be updated without having to reload the page.

Acceptance tests have been written for you that cover these requirements. Run `rspec` to run the test suite and implement code to make these tests pass.

### Tips

* To meet expectations, all the requirements specified above must be met. It is possible to make all the tests pass, but not satisfy the requirements above, so please double-check the requirements once you are done.
* The only file you will need to modify is `public/app.js` to fulfill these requirements.
* Follow the steps provided in the `public/app.js` file, in order.
* Use the provided HTML elements, `id` and `class` attributes to select DOM elements.
* Use the Chrome JavaScript console (`Command + Option + i`) to try out code, as well as to look for JavaScript error messages.
