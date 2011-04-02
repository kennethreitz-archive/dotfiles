var comic = $("div.s img[title]");
var titleP = $("<p></p>");
titleP.css({"font-variant": "normal",
            "border": "1px solid yellow",
            "padding": "1em",
            "background-color": "#FFFFCC"});
titleP.text(comic.attr("title"));
comic.after(titleP);