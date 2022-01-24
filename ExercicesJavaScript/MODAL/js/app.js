// sélectionner modal-btn, modal-overlay, close-btn
// Ecouter les évènements 'click' sur modal-btn et close-btn
// quand un utilisateur 'click' sur modal-btn ajouter .open-modal à modal-overlay
// quand un utilisateur 'click' sur close-btn supprimer .open-modal de modal-overlay

/* -------------------------MODAL CSS modifier------------------------- */
/* let modalbtn = document.getElementsByClassName("modal-btn")[0];
let closebtn =document.getElementsByClassName("close-btn")[0];

modalbtn.addEventListener("click", function(){
    document.getElementsByClassName("modal-overlay")[0].style.visibility = "visible";
    document.getElementsByClassName("modal-overlay")[0].style.zIndex = "111";
});
closebtn.addEventListener("click", function(){
    document.getElementsByClassName("modal-overlay")[0].style.visibility = "hidden";
    document.getElementsByClassName("modal-overlay")[0].style.zIndex = "-10";
});
 */


/* -------------------------MODAL querySelector w/ function ClassList add/Remove------------------------- */
let modalbtn = document.getElementsByClassName("modal-btn")[0];
let closebtn =document.getElementsByClassName("close-btn")[0];

function addRemove (){
    (document.querySelector('.modal-overlay').classList != "modal-overlay open-modal") ?
        document.querySelector('.modal-overlay').classList.add("open-modal")
    : document.querySelector('.modal-overlay').classList.remove("open-modal");
}

modalbtn.addEventListener("click", function(){addRemove();});
closebtn.addEventListener("click", function(){addRemove();});


/* -------------------------MODAL querySelector w/o function ClassList add/Remove------------------------- */

/* let modalbtn = document.getElementsByClassName("modal-btn")[0];
let closebtn =document.getElementsByClassName("close-btn")[0];

modalbtn.addEventListener("click",function(){
    document.querySelector('.modal-overlay').classList.add("open-modal");
});

closebtn.addEventListener("click",function(){
    document.querySelector('.modal-overlay').classList.remove("open-modal");
}); */
