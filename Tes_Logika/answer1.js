const bilanganCacah = (n) => {
  var arr = [];
  for (var i = 1; i < 1000; i++) {
    if (i % 3 == 0 && i % 7 == 0) {
      arr.push("Z");
    } else if (i % 3 == 0 || i % 7 == 0) {
      arr.push(i);
    }
    if (arr.length == n + 1) {
      break;
    }
  }
  let tmp = "";
  arr.forEach((element, i) => {
    if (i != n) {
      tmp += `${element},`;
    } else {
      tmp += `${element}`;
    }
  });
  console.log(tmp);
};

bilanganCacah(13);
