const charset = "01234567890abcdefghijklmnopqrstuvxyz|^";
const lookup = {};
[...charset].forEach((char, index) => {
  lookup[char] = index;
});

function encodeBase38() {
  let num = parseInt(document.getElementById("decimalInput").value);
  if (isNaN(num) || num < 0) {
    alert("Please enter a valid non-negative number.");
    return;
  }
  let result = "";
  do {
    result = charset[num % 38] + result;
    num = Math.floor(num / 38);
  } while (num > 0);
  document.getElementById("resultBox").innerText = "Base^38: " + result;
}

function decodeBase38() {
  let str = document.getElementById("base38Input").value;
  let total = 0;
  for (let i = 0; i < str.length; i++) {
    let c = str[i];
    if (!(c in lookup)) {
      alert("Invalid Base^38 character: " + c);
      return;
    }
    total = total * 38 + lookup[c];
  }
  document.getElementById("resultBox").innerText = "Base-10: " + total;
}

// Handle query string like ?value=12345
window.addEventListener("DOMContentLoaded", () => {
  const params = new URLSearchParams(window.location.search);
  if (params.has("value")) {
    const val = parseInt(params.get("value"));
    if (!isNaN(val)) {
      document.getElementById("decimalInput").value = val;
      encodeBase38();
    }
  }
});
