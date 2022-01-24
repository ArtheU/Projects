/* function bisext (year){
    if ((0 == year % 4) && (0 == year % 100) || (0 == year % 400)){
        document.write("Année Bisextile");
    }else{
        document.write("Pas Bisextile");
    }
}

let year = +prompt("Entrez une année");
bisext(year);
 */
/* 
function convertCeltoFah (fahrenheit){
    return (fahrenheit*9/5) + 32;
}

let fahrenheit = +prompt("Entrez le degree Celsius");
let celsius = convertCeltoFah(fahrenheit)
document.write(celsius); */

let a = +prompt('a?', '');

switch(a){
    case 0:
        alert(0);
        break;
    case 1:
        alert();
        break;
    case 2:
    case 3:
        alert('2,3');
        break;
}