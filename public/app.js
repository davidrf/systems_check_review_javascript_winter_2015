$(document).ready(function() {
  $('form').submit(function(event) {
    // STEP 1: prevent the default action (form submission) from happening


    // STEP 2: pull the question entered by the user in the form
    // from the DOM


    // STEP 3a: call the submitQuestionViaAjax function with the
    // correct argument, if the form was filled out


    // STEP 3b: show an alert message if the form is empty


  });
});

var submitQuestionViaAjax = function(title) {
  // create ajax request
  var request = $.ajax({
    method: "STEP-4-put-correct-http-verb-here",
    url: "STEP-5-put-correct-path-here",
    data: "STEP-6-put-data-here"
  });

  // if ajax request is successful, update the DOM
  request.done(function() {
    alert("Successful AJAX request! Now update the DOM");
    // STEP 7a: comment out the line above
    // STEP 7b: write code to update the DOM with the new question title


  });
}
