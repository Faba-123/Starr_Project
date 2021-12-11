// Video for the regex: https://youtu.be/5GVBe4vwW8o

// Using  regex to validate the form
let email = document.getElementById('email');
let num = document.getElementById('num');
let span = document.getElementsByTagName('span');

    email.onkeydown = function(){
        const regex = /^([\.\_a-zA-Z0-9]+)@([a-zA-Z]+)\.([a-zA-Z]){2,8}$/;
        const regexo = /^([\.\_a-zA-Z0-9]+)@([a-zA-Z]+)\.([a-zA-Z]){2,3}\.[a-zA-Z]{1,3}$/;
        if (regex.test(email.value) || regexo.test(email.value))
        {
            span[0].innerText = "Your email is valid";
            span[0].style.color = 'lime';
        }
        else{
            span[0].innerText = "Your email is Invalid or too long ";
            span[0].style.color = 'red';
        }
    }

    num.onkeydown = function(){
        const regexn = /^[0-9]{10}$/;
        if (regexn.test(num.value)){
            span[1].innerText = "Your number is valid";
            span[1].style.color = 'lime';
        }
        else{
            span[1].innerText = "Your number is Invalid or too long";
            span[1].style.color = 'red';

        }
    }