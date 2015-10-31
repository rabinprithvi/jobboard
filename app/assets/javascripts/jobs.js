jQuery(function() {
  return $("#q").autocomplete({
    source: "/autocomplete",
    minLength: 2
  });
});
