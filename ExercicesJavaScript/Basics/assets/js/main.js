/* function checkAge(age){
    if (age>18){
        return true;
    }
    return confirm('Did your parents allow you?');
}

function confirm(text){
    document.write(text);
} */


    /* ----------------------------------------------------- */


/* function checkAge(age){
    return (age > 18) ? true : confirm('Did your parents allow you?');
}

function confirm(text){
    document.write(text);
}

checkAge(prompt('Enter your Age')); */

    /* ---------------------------------------------------------- */

/* function min(a,b){
    return (a < b) ? a : b;
}

document.write(min(prompt('Nb One'),prompt('Nb Two'))); */

    /* ---------------------------------------------------------- */

/* function pow(x,n){
    for (let i = 0; i < n; i++){
        res = res + (x * x);
    }
    return res;
}
let res = 0;
document.write(pow(prompt(),prompt())); */

/* function pow(x,n){
    let resultat = x;
    for(let i = 1; i < n; i++){
        resultat *= x;
    }
    return resultat;
}

let x = prompt("x?"); 
let n = prompt("n?");

(n < 1) ? alert(`Power ${n} is not supported, use a postive integer`) : document.write(pow(x,n)); */

    /* ---------------------------------------------------------- */

/* function ask(question, yes, no) {
    if (confirm(question)) yes()
    else no();
  }
  
  function showOk() {
    alert( "You agreed." );
  }
  
  function showCancel() {
    alert( "You canceled the execution." );
  }
  
  // utilisation: les fonctions showOk, showCancel sont transmises en tant qu'arguments à ask
  ask("Do you agree?", showOk, showCancel); */

    /* ---------------------------------------------------------- */

/* 
function middleArray(length){
    return Math.floor(length/2);
}
let styles = ["Jazz","Blues"];
document.write(styles);
styles.push("Rock-n-Roll");
document.write(`<br>` + styles);
styles[middleArray(styles.length)] = "Classics";
document.write(`<br>` + styles);
styles.splice(0,1);
document.write(`<br>` + styles);
styles.unshift("Rap","Reggae");
document.write(`<br>` + styles); */


    /* ---------------------------------------------------------- */

/* function sumInput(a){
    
    let numbers =[];

    while(true){
        let value = prompt("Enter a number");
        if(value === "" || value === null || !isFinite(value)) break;
        numbers.push(+value);
    }

    let sum = 0;
    for(let number of numbers){
        sum += number;
    }
    return sum;
}

alert(sumInput()); */