/**
 * Created by macbook on 2016-10-03.
 */
// 4. Write a JavaScript function called: isPrime. The function must take a number n and it should return `true` or `false` whether the argument passed (n) is a prime number or not. A prime number is a number that is divisible only by 1 and itself.

var isPrime = function (number) {
    if (number<=1){
        return console.log("Please input number larger than 1.");
    }
    if(number==2){
        return false
    }

    var flag = 1
    //flag=0 means the result is divisible by any number between 2 and itself-1
    //the default flag = 1
    for (var i = 2; i < number; i++) {
        if (number%i==0){
            flag=0
        }


    }
   return flag==1?true:false
}

//test case
for (var i=1;i<100;i++){
    console.log(i+" "+ isPrime(i));
}

// console.log(isPrime(9));
