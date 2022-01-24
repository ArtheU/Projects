// Récupérer tous les sélecteurs .question
// Pour chaque sélecteur :
// Récupérer le sélecteur .question-btn
// Ecouter les évènements 'click' sur .question-btn
// Si une autre question est visible supprimer .show-text de celle-ci
// Ajouter .show-text à la question qui a reçu le 'click' pour afficher le texte

let question = document.querySelectorAll(".question");

question.forEach(element => {
    let btn = element.querySelector(".question-btn");
    console.log(btn);
    btn.addEventListener("click",function(){
        question.forEach(item => {
            (item != element)? item.classList.remove('show-text'): console.log("nothing");
        });
        element.classList.toggle("show-text");
    });
});


