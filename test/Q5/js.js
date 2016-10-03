/**
 * Created by macbook on 2016-10-03.
 */
// 5. Write a function in JavaScript that takes in a number n and returns the first n even numbers.

function even(num) {
    var arr = [];

    for (var i=0; i <= num; i++) {
        if (i % 2 == 0) {
            arr.push(i);

        }

    }
    return arr;
}

console.log(even(24));