/*Напилите кодец, который работает с массивом произвольных целых чисел
var numbers = [ 254, 115, 78, 25, 91, 45, 37 ]
Ваш скрипт должен вывести в консоль все числа больше 50
Посказка: используйте оператор цикла и условный оператор*/

let numbers = [254, 115, 78, 25, 91, 45, 37];
const numbers2 = numbers.filter(number =>number>50);
console.log(numbers2);

/*Создайте три переменные с любыми числовыми значениями. 
Используя условный оператор  и не используя логические, найдите минимальное число и отобразите на экране имя переменной и ее значение.*/

let a=10, b=20, c=30;
if (a<b){
    if (a<c){
        console.log(a);
    }
    else {
        console.log(c);
    }
}
else{
    console.log(b);
}

/*В переменную age запишите возраст человека. Если значение больше или равно 20 и меньше 27, через console.warn выводится “Выслать повестку”.*/

age =  prompt("Ваш возраст?");
if (20<=age<27){
    console.warn("Выслать повестку.")
}

/*В переменную day записан текущий день недели. Если это не суббота и не воскресенье, выведите в console.log сообщение о необходимости идти на работу.*/

var day=new Date();

if (day.getDay()!=0&&day.getDay()!=6){
    console.log("Необходимо идти на работу!")
}


/*05. Сформируйте строку вида ".#.#.#.#.#." с помощью цикла for.*/

var StringPoint = '.' , StringSharp='#';
for (i = 1; i < 11; i++) {
    if (i%2=0){
        str=str+StringPoint;
    }
    else{
        str=str+StringSharp;
    }
  }
  console.log(str);


/*06. Напишите цикл с шагом 1, в теле которого распечатываются квадраты каждого четного значения счетчика*/
for (i = 1; i < 11; i++) {
    if (i%2==0){
        var square=i**2;
        console.log( square);
    }
  }



  /*Напишите программу, которая в консоли выводит текстовое поздравление. Программа поздравляет того, чье имя определяется в переменной username:
  Happy birthday dear {{username}}
  Например Happy birthday dear Maxim*/

  var username="Alexey"
   console.log("Happy birthday dear "+username)

/*08. Напишите цикл от 1 до 50, в котором будет выводиться поочередно числа от 1 до 50, но есть условия:

- если число делится на 3 без остатка, то выводить не это число, а слово «Fizz»;
- если число делится на 5 без остатка, то выводить не это число, а слово «Buzz»;
- если число делится и на 3 и на 5 без остатка, то выводить не это число, а слово «FizzBuzz»; */
var str="";
for(i=1;i<50;i++){
    if(i%3==0||i%5==0){
        str+="Fizz Buzz"+" "
    }
    else if(i%3==0){
        str+="Fizz"+" "
    }
    else if(i%5==0){
        str+="Buzz"+" "
    }
    else{
        str+=i+" "
    }
}
console.log(str)

/*09. Обратите внимание на те или иные расчеты, нужные вам в обычной жизни. Это может быть оплата за электричество, количество километров, пройденных за месяц (если вы, например, ходите по одному и тому же маршруту каждый день), количество батонов, кофе, масла, всего чего угодно и так далее. Так же можете написать любую калькуляцию, нужную вам в работе. Представьте это в форме кода, подобного следующему:

var firstParameter = 5; //смысл переменной
var secondParameter = 10; //иной комментарий, поясняющий переменную

var somePartialResult = firstParameter*5; //суть переменной и формулы
var someOtherPartialResult = secondParameter/100500; //

var result = somePartialResult + someOtherPartialResult; //суть результата и переменной*/

let ElectrisityCountDay = 420;
let ElectrisityCountNight=118;
let ElectisitySum = 1.68

let PaySum = ElectrisityCountDay * 









