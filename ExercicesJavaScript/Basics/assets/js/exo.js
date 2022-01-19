    /* -------------------------1-BISEXTILE------------------------- */

/* function bisext(year){
    (0 == year%4 && 0 < year%100 || 0 == year%400) ? document.write("Bisextile") : document.write("Non Bisextile");
}

bisext(+prompt("Entrez une année")); */

    /* -------------------------2-GUESS NUMBER------------------------- */

/* function guessNum(a){
    (a == numberChosen) ? document.write("Good Guess ! The correct number was : " + numberChosen) : document.write("Wrong ! The correct number was : " + numberChosen);
}
let numberChosen = Math.round(Math.random()*10)
guessNum(prompt("Guess the number")); */

    /* -------------------------3-Multi & Divi------------------------- */
/* 
function multiDivi(a,b){
    document.write(a * b);
    document.write("<br>" + a/b);
}

multiDivi(+prompt("Entrez votre premier nombre"), +prompt("Entrez votre second nombre")); */

    /* -------------------------4-Celsius to Fahrenheit------------------------- */

/* function celToFahren(cel){
    fahrenheit = (cel*9/5)+32;
    document.write(fahrenheit);
    return fahrenheit;
}

let fahrenheit;
celToFahren(+prompt("Entrez la température en Celsius")); */

    /* -------------------------5-Diff & Double------------------------- */

/* function diffAndDouble(a){
    (a <= 13) ? document.write(13-a) : document.write((a-13) * 2);
}

diffAndDouble(+prompt("Entrez un nombre")); */

    /* -------------------------6-Same & Triple------------------------- */

/* function sameAndTriple(a,b){
    (a != b) ? document.write(a+b) : document.write((a+b)*3);
}

sameAndTriple(+prompt("Entrez une première valeur"),+prompt("Entrez une seconde valeur")); */

    /* -------------------------7-Diff & Triple------------------------- */

/* function diffAndTriple(a){
    (a <= 19) ? document.write(19 - a) : document.write((a-19)*3);
}

diffAndTriple(+prompt("Entrez un nombre")); */

    /* -------------------------8-Fifty Or Not------------------------- */

/* function fiftyOrNot(a,b){
    (a === 50 || b === 50 || a + b === 50) ? document.write("True") : document.write("False");
}

fiftyOrNot(+prompt("Entrez une première valeur"), +prompt("Entrez une seconde valeur")); */

    /* -------------------------9-Start w/ a Py------------------------- */

/* function startWithPy (a){
    (a.substring(0,2) === "Py") ? document.write(a) : document.write("Py"+a);
}

startWithPy(prompt("Entrez un mot")); */

    /* -------------------------10-Randomize Word------------------------- */

/* function randomizeWord(a){
    let wordSize = a.length - 1;
    let newWord = a.substr(wordSize, 1) + a.substring(1,wordSize) + a.substr(0,1);
    document.write(newWord);
}

randomizeWord(prompt("Saisissez un mot")); */

    /* -------------------------11-Three Or Seven Multiple------------------------ */

/* function threeSevenMultiple(a){
    (0 == a%7) ? document.write("Multiple de Sept") : console.log("Not 7");
    (0 == a%3) ? document.write ("Multiple de Trois") : console.log("Not 3");
}

threeSevenMultiple(+prompt("Entrez un nombre")); */

    /* -------------------------12-Three Letters Start------------------------ */

/* function threeLastAtStart (a){
    if (a.length < 3){
        while (a.length < 3){
            a = prompt("Erreur, entrez un mot d'au moins 3 lettres");
        }
    }
    document.write(a.substr(a.length-3, a.length-1) + a + a.substr(a.length-3, a.length-1));
}

threeLastAtStart(prompt("Entrez un mot d'au moins 3 lettres")); */

    /* -------------------------13-Biggest Number------------------------ */

/* function biggest (a,b,c){
    (a > b && a > c) ? document.write(a) : (b > a && b > c) ? document.write(b) : (c > b && c > a) ? document.write(c) : document.write("Egale");
}

biggest(+prompt("Entrez votre premier nombre"),+prompt("Entrez votre second nombre"),+prompt("Entrez votre troisième nombre")); */

    /* -------------------------14-Closest to One-Hundo------------------------ */

/* function closeToHun (a,b){
    (100 - a < 100 - b) ? document.write(a) : (100 - b < 100 - a) ? document.write(b) : document.write("Egale");
}

closeToHun(+prompt("Entrez votre première valeur"), +prompt("Entrez votre seconde valeur")); */

    /* -------------------------15-Number Area------------------------ */

/* function numberArea(a,b){
    (a >= 40 && a <= 60) ? document.write( a + " Est dans la plage 40-60") : (a >= 70 && a <= 100) ? document.write( a + " Est dans la plage 70-100") : document.write("Votre première valeur n'est dans aucune plage");
    (b >= 40 && b <= 60) ? document.write( "<br>" + b + " Est dans la plage 40-60") : (b >= 70 && b <= 100) ? document.write( "<br>" +b + " Est dans la plage 70-100") : document.write("<br>" + "Votre première valeur n'est dans aucune plage");
}

numberArea(+prompt("Entrez votre premier nombre"), +prompt("Entrez votre second nombre")); */

    /* -------------------------16-Countain Number------------------------ */

/* function countainNumber(){
    let countain = 0;
    for (let i = 0; i < tab.length; i++){
        (tab[i] == 1 || tab[i] == 3) ? countain++ : console.log("nothing");
    }
    (countain > 0) ? document.write("True") : document.write("False");
    document.write("<br>" + tab)
}

let tab = [Math.floor(Math.random()*5),Math.floor(Math.random()*5),Math.floor(Math.random()*5)];

countainNumber(); */

    /* -------------------------17-Array split------------------------ */

let arrayDefault = [];
let arrayMain = [];
let arraySecond = [];
let arraySum = [];
let sumMain = 0
    , sumSecond = 0;

function arraySplit(){
    for(i = 0; i < 10; i++){arrayDefault[i] = Math.floor(Math.random()*10);}
    for(i = 0; i < arrayDefault.length; i++){
        (i%2 == 0) ? arrayMain.push(arrayDefault[i]) : arraySecond.push(arrayDefault[i]);
        (i%2 == 0) ? sumMain += arrayDefault[i] : sumSecond += arrayDefault[i];
    }
    arraySum.push(sumMain, sumSecond);
}

arraySplit();
document.write(arrayDefault + "<br>" + arrayMain + "<br>" + arraySecond + "<br>" + arraySum);