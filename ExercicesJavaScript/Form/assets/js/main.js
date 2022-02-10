function validInvalid(select, valid){
    if(valid === true){
        document.querySelector(select).classList.remove('is-invalid');
        document.querySelector(select).classList.toggle('is-valid');
    }else{
        document.querySelector(select).classList.remove('is-valid');
        document.querySelector(select).classList.toggle('is-invalid');
    }
}

document.querySelector('.lastName').addEventListener('change', function(){
    (document.querySelector('.lastName').value.length > 2) ? validInvalid('.lastName', true) : validInvalid('.lastName', false);
});

document.querySelector('.firstName').addEventListener('change', function(){
    (document.querySelector('.firstName').value.length > 2) ? validInvalid('.firstName', true) : validInvalid('.firstName', false);
});

document.querySelector('.passwordConfirm').addEventListener('change', function(){
    (document.querySelector('.password').value === document.querySelector('.passwordConfirm').value) ? validInvalid('.passwordConfirm', true) : validInvalid('.passwordConfirm', false);
});

document.querySelector('.btn-secondary').addEventListener('click',function(){
    (document.querySelectorAll('.is-invalid').length == 0 && document.querySelectorAll('.is-valid').length == 3) ? alert('Gucci') : alert('Error');
});