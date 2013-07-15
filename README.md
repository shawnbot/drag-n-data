# drag-n-data (dnd)

A simple helper for reading data files (CSV, TSV, and JSON) via browser
drag-n-drop with support from d3. Check
[caniuse.com](http://caniuse.com/dragndrop) to see which browsers support the
HTML5 drag-and-drop API.

## Usage

dnd has helper functions for most drag-and-drop related needs, but the easiset
way to get started is to use the dnd.dropper selection helper:

```js
var dropper = d3.select("#dropper")
  .call(dnd.dropper()
    .on("dragover", function() {
      dropper.classed("active", true);
    })
    .on("drop", function() {
      dropper.classed("active", false);
    })
    .on("read", function(files) {
      // files[0].data is an array
    }));
```
