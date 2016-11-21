$(function() {
  setTimeout(updateMessages, 10000);
});

function updateMessages () {
  $.getScript("/conversations.js")
    setTimeout(updateMessages, 10000);
}
