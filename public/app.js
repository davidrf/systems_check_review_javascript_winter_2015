$(document).ready(function() {
  $("form").on("submit", function(event){
    event.preventDefault();
    var title = $("#question_title").val();
    if (title) {
      submitQuestionViaAjax(title);
    } else {
      alert("stop that!");
    }
  });
});

var submitQuestionViaAjax = function(title) {
  var request = $.ajax({
    method: "POST",
    url: "/questions",
    data: { title: title }
  });

  request.done(function(responseData) {
    $("ul").append("<li>" + title + "</li>");
  });
}
