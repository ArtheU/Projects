/* function Person(firstName, lastName, age, gender, interest){
    this.lastName = {
        firstName,
        lastName
    };
    this.age = age;
    this.gender = gender;
    this.interest = interest;
    this.bio = function(){
        alert(this.lastName.firstName + ' ' + this.lastName.lastName + ' is ' + this.age + ' years old. He likes ' + this.interest[0] + ' and ' + this.interest[1] + '.');
    };
    this.greetings = function(){
        alert('Hello ! My name is ' + this.lastName.firstName + '.');
    };
};

let personOne = new Person('Bob', 'Smith', 32, 'male', ['music', 'ski']); */

/* personOne['age'];
personOne.interest[1];
personOne.bio(); */

/* let personTwo = Object.create(personOne);
personTwo.bio(); */

/* let personThree = new personOne.constructor('Karen', 'Stephenson', 26, 'Female', ['Playing Drums', 'Climbing']);
personThree.bio(); */

/* function Personne(prenom, famille, age, genre, interets) {
    this.nom = {
      'prenom': prenom,
      'famille' : famille
    };
    this.age = age;
    this.genre = genre;
    this.interets = interets;
    this.bio = function() {
      // On définit une chaîne de caractères et on construit une partie qui sera
      // toujours construite de la même façon.
      let string = this.nom.prenom + ' ' + this.nom.famille + ' a ' + this.age + ' ans. ';
      // On définit une variable qui contiendra le pronom pour la deuxième
      // phrase
      let pronom;

      // Selon le genre, on prend le pronom approprié
      if(this.genre === 'homme' || this.gender === 'Homme' || this.gender === 'h' || this.gender === 'H') {
        pronom = 'Il aime ';
      } else if(this.genre === 'femme' || this.gender === 'Femme' || this.gender === 'f' || this.gender === 'F') {
        pronom = 'Elle aime ';
      } else {
        pronom = this.nom.prenom + ' aime ';
      }

      // On ajoute le pronom à la fin de la chaîne de caractères
      string += pronom;

      // On utilise une autre structure conditionnelle pour construire la
      // la dernière partie de la phrase selon le nombre d'intérêts         
      if(this.interets.length === 1) {
        string += this.interets[0] + '.';
      } else if(this.interets.length === 2) {
        string += this.interets[0] + ' et ' + this.interets[1] + '.';
      } else {
        // S'il y a plus de deux intérêts, on boucle pour les parcourir
        // et on les ajoute à la chaîne de caractères principale en les
        // séparant par une virgule à l'exception du dernier qui sera
        // précédé d'un et et suivi d'un point
        for(let i = 0; i < this.interets.length; i++) {
          if(i === this.interets.length - 1) {
            string += 'et ' + this.interets[i] + '.';
          } else {
            string += this.interets[i] + ', ';
          }
        }
      }

      // Une fois la chaîne construite, on l'affiche avec alert()
      alert(string);
    };
    this.salutation = function() {
      alert('Bonjour ! Je m\'appelle ' + this.nom.prenom + '.');
    };
}; */

/* let personne1 = new Personne('Jean', 'Biche', 32, 'neutre', ['musique', 'tricot', 'boxe']);

Personne.prototype.aurevoir = function(){
    alert(this.nom.prenom + ' est sorti. Au revoir !');
}

function Professeur(prenom, nom, age, genre, interets, matiere){
    Personne.call(this, prenom, nom, age, genre, interets);
    this.matiere = matiere;
}

Professeur.prototype = Object.create(Personne.prototype);
Professeur.prototype.constructor = Professeur;

Professeur.prototype.saluer = function(){
    let prefix;
    if (this.genre === 'mâle' || this.genre === 'Mâle' || this.genre === 'm' || this.genre === 'M') {
        prefix = 'M.';
    } else if (this.genre === 'femelle' || this.genre === 'Femelle' || this.genre === 'f' || this.genre === 'F') {
        prefix = 'Mme';
    } else {
        prefix = '';
    }
    alert('Bonjour. Mon nom est ' + prefix + ' ' + this.nom.famille + ', et j\'enseigne ' + this.matiere + '.');
}

let professeur1 = new Professeur('Cédric', 'Villani', 44, 'm', ['football', 'cuisine'], 'les mathématiques'); */
 