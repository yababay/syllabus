/*
 * Тип symbol появился в стандарте JavaScript (ES6)
 * сравнительно недавно. Он по сути и представляет собой 
 * именованную ссылку, с помощью которой можно быстро
 * найти нужный объект, функцию или примитив.
 * Начинающим программистам тип symbol вряд ли будет полезен,
 * поэтому лучше им сосредоточиться на изучении свойств
 * boolean, number, string, object, function и undefined.
 */

let user = {
    id: 1,
    name: "John"
}

let id = Symbol("id")

user[id] = 2

console.log(user[id])
console.log(user.id)
