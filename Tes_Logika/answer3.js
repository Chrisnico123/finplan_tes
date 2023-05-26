var hasNumber = /\d/;

const checkStringUp = (password) => {
  if (password.match(new RegExp("[A-Z]"))) {
    return true;
  }

  return false;
};
const checkStringLow = (password) => {
  if (password.match(new RegExp("[a-z]"))) {
    return true;
  }

  return false;
};

const checkPassword = (password) => {
  const lengthPassword = password.length;
  if (hasNumber.test(password[0])) {
    return "Karakter awal tidak boleh angka";
  }
  if (!checkStringLow(password) || !checkStringUp(password)) {
    return "Harus memiliki huruf kapital dan huruf kecil";
  }
  if (!hasNumber.test(password)) {
    return "Harus memiliki angka";
  }
  if (lengthPassword <= 8) {
    return "Kata sandi minimal 8 karakter";
  }
  if (lengthPassword >= 32) {
    return "Kata sandi maksimal 32 karakter";
  }
};

console.log(checkPassword("asd;aksjd;ajsdw"));
