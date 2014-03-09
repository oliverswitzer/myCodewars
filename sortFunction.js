function sortList (sortBy, list) {
  var sorted = 0;
  for(var i=0; i < list.length; i++) {
    // sorted++
    // if list[]
    
    
    for(var j=0, swapping; j < list.length; j++) {
      var newObjIndex;
      if (sortObj[sortBy] < list[j][sortBy]) {
        newObjIndex = j;
      }
    }
    list[newObjIndex] = sortObj;
    list.shift();
  }
  return list;
}

function newSortList (sortBy, list) {
  var sorted = 0;
  for(var i=0, swapping; i < list.length - 1; i++) {
    sorted++
    if (list[i][sortBy] < list[i+1][sortBy]) {
      swapping = list[i+1];
      list[i+1] = list[i];
      list[i] = swapping;
    } 
  }
  return list;
}

var list = [
  {a: 1, b: 3},
  {a: 3, b: 2},
  {a: 2, b: 40},
  {a: 4, b: 12}
];

console.log(list.toJSON);

console.log("Old list: " + list);
console.log("Sorted list: " + newSortList("a", list));

// expecting output:
// [
//   {a: 4, b: 12},
//   {a: 3, b: 2},
//   {a: 2, b: 40},
//   {a: 1, b: 3}
// ]

