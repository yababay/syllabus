/*
 * Из семи типов данных в JavaScript (boolean, number,
 * string, object, undefined, symbol) первые три
 * обрабатываются по значению. Это значит, что каждая такая 
 * переменная изолирована от остальных. Ее изменение не влияет
 * на другие сущности. Под каждую числовую, логическую или
 * строковую переменную выделяется необходимый объем памяти,
 * где хранится ее значение.
 */

let myRating = 5;
let yourRating = myRating;

console.log(myRating, yourRating); // 5 5

myRating = 9;

console.log(myRating, yourRating); // 9 5

function multiplyRating(rating) {
      return rating * 10;
}

let newRating = multiplyRating(myRating);
console.log(myRating, newRating); // 9 90
