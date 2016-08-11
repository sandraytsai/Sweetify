$(document).ready(function() {

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()

  var theDiv = document.getElementById("image_Display");

  (function(div, sleep) {
  var idx = 0;
  var imgs = div.getElementsByTagName('img');
  function showOne() {
    for (var i = 0; i < imgs.length; ++i)
      imgs[i].style.display = 'none';
    imgs[idx].style.display = 'block';
    idx = (idx + 1) % imgs.length;
    setTimeout(showOne, sleep);
  }

  showOne();
})(theDiv, 3000);
});
