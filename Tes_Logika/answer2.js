var globalString = "";
var tmp = [];
const includeString = (text, searchWord) => {
  let jumlah = 0;
  let word = text.toLowerCase();
  const search = searchWord;
  const searchLength = search.length;
  do {
    const result = word.indexOf(search);
    if (result == -1) {
      break;
    }
    word = word.slice(searchLength + result);
    jumlah = jumlah + 1;
  } while (word.length != 0);
  for (let i = 0; i < jumlah; i++) {
    tmp.push(searchWord);
  }
};

const text = "Berikut adalah kisah sang gajah. Sang gajah memiliki teman serigala bernama DoeSang. Gajah sering dibela oleh serigala ketika harimau mendekati gajah.";
const pencarian = ["sang gajah", "serigala", "harimau"];

pencarian.forEach((element) => {
  includeString(text, element);
});
tmp.forEach((element, i) => {
  if (i != tmp.length - 1) {
    globalString += `${element} - `;
  } else {
    globalString += `${element}`;
  }
});
console.log(globalString);
