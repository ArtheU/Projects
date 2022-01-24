// Récupérer le sélecteur .about, tous les sélecteurs .tab-btn et .content
// Ecouter l'évènement 'click' sur .about

// Récupérer la valeur de l'id de l'élément courant avec e.target.dataset.id
// voir tuto https://codepen.io/dizakids/pen/WNNVLEz

  // si id
  
    // supprimer .active sur les autres boutons

    // le btn courant devient .active

    // supprimer .active sur les autres contenus

    // récupérer le contenu courant grâce à l'id

    // ajouter .active au contenu courant

let about = document.querySelector('.about');
let tabBtn = document.querySelectorAll('.tab-btn');
let content = document.querySelectorAll('.content');


tabBtn.forEach(element => {
  element.addEventListener("click", function(){
    if(event.target.dataset.id == "history"){
      document.querySelector("#vision").classList.remove("active");
      document.querySelector("#goals").classList.remove("active");
      document.querySelector("#history").classList.add("active");

      document.querySelector("[data-id='vision']").classList.remove("active");
      document.querySelector("[data-id='goals']").classList.remove("active");
      document.querySelector("[data-id='history']").classList.add("active");
    } else if (event.target.dataset.id == "vision"){
      document.querySelector("#history").classList.remove("active");
      document.querySelector("#goals").classList.remove("active");
      document.querySelector("#vision").classList.add("active");

      document.querySelector("[data-id='history']").classList.remove("active");
      document.querySelector("[data-id='goals']").classList.remove("active");
      document.querySelector("[data-id='vision']").classList.add("active");
    }else if (event.target.dataset.id == "goals"){
      document.querySelector("#history").classList.remove("active");
      document.querySelector("#vision").classList.remove("active");
      document.querySelector("#goals").classList.add("active");

      document.querySelector("[data-id='history']").classList.remove("active");
      document.querySelector("[data-id='vision']").classList.remove("active");
      document.querySelector("[data-id='goals']").classList.add("active");
    }
  })
});