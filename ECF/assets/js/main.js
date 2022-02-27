/* ------------------------------SLIDER------------------------------ */

let slide = ["'assets/media/seasonal_promotions/Garden_tools_pix.jpg'"
    ,"'assets/media/seasonal_promotions/GettyImages.jpg'"
    ,"'assets/media/seasonal_promotions/proud-gardener.jpg'"];
        

let leftSlide = document.getElementsByClassName("left-img")[0]; 
let mainSlide = document.getElementsByClassName("center-img")[0];
let rightSlide = document.getElementsByClassName("right-img")[0];
let i = 0;


        /* -----------------------Bouton Gauche---------------------------- */
document.getElementsByClassName("icofont-rounded-left")[0].addEventListener("click", function(){
    if(i == 0){ 
        leftSlide.style.background = "url("+slide[2] +") 50% 50% no-repeat";
        mainSlide.style.background = "url("+slide[0] +") no-repeat";
        rightSlide.style.background = "url("+slide[1] +") 50% 50% no-repeat";
        i++ 
    } else if(i == 1){ 
        leftSlide.style.background = "url("+slide[1] +") 50% 50% no-repeat"
        mainSlide.style.background = "url("+slide[2] +") no-repeat";
        rightSlide.style.background = "url("+slide[0] +") 50% 50% no-repeat";
        i++  
    } else {
        leftSlide.style.background = "url("+slide[0] +") 50% 50% no-repeat"
        mainSlide.style.background = "url("+slide[1] +") no-repeat";
        rightSlide.style.background = "url("+slide[2] +") 50% 50% no-repeat";
        i = 0;
    }
});

        /* -----------------------Bouton Droit---------------------------- */
document.getElementsByClassName("icofont-rounded-right")[0].addEventListener("click", function(){
    if(i == 0){ 
        leftSlide.style.background = "url("+slide[1] +") 50% 50% no-repeat"
        mainSlide.style.background = "url("+slide[2] +") no-repeat";
        rightSlide.style.background = "url("+slide[0] +") 50% 50% no-repeat";
        i++
    } else if(i == 1){
        leftSlide.style.background = "url("+slide[2] +") 50% 50% no-repeat"
        mainSlide.style.background = "url("+slide[0] +") no-repeat";
        rightSlide.style.background = "url("+slide[1] +") 50% 50% no-repeat";
        i++
    } else {
        leftSlide.style.background = "url("+slide[0] +") 50% 50% no-repeat"
        mainSlide.style.background = "url("+slide[1] +") no-repeat";
        rightSlide.style.background = "url("+slide[2] +") 50% 50% no-repeat";
        i = 0;
    }
});

leftSlide.style.background = "url("+slide[0] +") 50% 50% no-repeat";
mainSlide.style.background = "url("+slide[1] +") no-repeat";
rightSlide.style.background = "url("+slide[2] +") 50% 50% no-repeat";

/* ------------------------------ARTICLES------------------------------ */

let articles = ["url('assets/media/articles/article1.png') no-repeat","url('assets/media/articles/article2.jpg') no-repeat","url('assets/media/articles/article3.jpg') no-repeat","url('assets/media/articles/article4.jpg') no-repeat"];
let articleDiv = document.getElementsByClassName('article-img-box');

for (let index = 0; index < articleDiv.length; index++) {
    const element = articleDiv[index];
    element.style.background = articles[index];
};

/* ------------------------------DELANDPAY------------------------------ */

let delandpay = ["url('assets/media/delivery.jpg') no-repeat","url('assets/media/payments.jpg') no-repeat"];
let delandpayDiv = document.getElementsByClassName('delandpay-img-box');

for (let index = 0; index < delandpayDiv.length; index++) {
    const element = delandpayDiv[index];
    element.style.background = delandpay[index];
    
}

/* ------------------------------SIGN UP FORM------------------------------ */
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

document.querySelector('.btn-signup').addEventListener('click',function(){
    (document.querySelectorAll('.is-invalid').length == 0 && document.querySelectorAll('.is-valid').length == 3) ? alert('Gucci') : alert('Error');
});

