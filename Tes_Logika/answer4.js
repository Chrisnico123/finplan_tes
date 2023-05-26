const checkBilangan = (data) => {
  const arr = data;

  arr.sort((a, b) => {
    return a - b;
  });

  for (let i = 0; i < arr.length; i++) {
    if (arr[i] + 1 != arr[i + 1]) {
      console.log(arr[i] + 1);
      break;
    }
  }
};

const data = [5, 2, 8, 4, 3, 10];
checkBilangan(data);
