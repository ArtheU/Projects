let btnAdd = document.querySelector('.btnAdd');
let items = document.getElementsByClassName('item');

function remove(element){
    element.remove();
}
btnAdd.addEventListener('click', function(){
    let value = document.getElementById('toDo').value;
    (document.getElementById('toDo').value != "") ? document.querySelector('ul').insertAdjacentHTML('beforeend', '<li class="item"><p>' + value + '</p> <button> poubelle </button> </li>') : alert('Veuillez insérer une nouvelle tâche !');
    document.getElementById('toDo').value = "";
    document.querySelectorAll('li').forEach(element => {
        element.querySelector('button').addEventListener('click',function(){    
            confirm('az');
            remove(element);
        });
    });
});