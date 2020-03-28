/*
 * Следует особо отметить, что строки в JavaScript, в отличие от,
 * например, Java, являются "примитивами" и обрабатываются по 
 * значению. При изменении строк каждый раз происходит создание 
 * нового, доступного только для чтения экземпляра.
*/

let myName = "Винни"
let yourName = "Пятачок"
let hisName  = myName

console.log(myName, "и", yourName)

myName += " Пух"

console.log(myName, "и", yourName)
console.log(myName, "и", hisName)
