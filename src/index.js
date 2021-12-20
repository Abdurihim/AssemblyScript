const { add, fib } = require("../index");
const res = add(3, 5);

const start = Date.now();
fib(50);
console.log(`nodejs-wasm time consume: ${Date.now() - start} ms`);

function pureFib(num) {
  if (num === 1 || num === 2) {
    return 1;
  } else {
    return pureFib(num - 1) + pureFib(num - 2);
  }
}
const startPure = Date.now();
pureFib(50);
console.log(`nodejs-js time consume: ${Date.now() - startPure} ms`);
