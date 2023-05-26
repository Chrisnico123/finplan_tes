const rekursifSolution = (size, i = 0, row = "") => {
  if (i === size) {
    return;
  }

  if (row.length === size) {
    console.log(row);
    return rekursifSolution(size, i + 1, "");
  }

  if (i === 0 || i === size - 1 || row.length === 0 || row.length === size - 1 || i === size - row.length - 1) {
    row += "X";
  } else {
    row += "O";
  }

  return rekursifSolution(size, i, row);
};

const printPattern = (size) => {
  if (size % 2 == 0) {
    console.log("Harus bilangan ganjil");
  } else {
    rekursifSolution(size);
  }
};

const size = 5;
printPattern(size);
