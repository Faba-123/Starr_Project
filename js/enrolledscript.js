// this is to check if the form is filled


const name = document.getElementById('name')
const name = document.getElementById('email')
const number = document.getElementById('num')
const course = document.getElementById('course')
const form = document.getElementById('form')
const errorElement = document.getElementById('error')
const span = document.getElementsByTagName('span')

form.addEventListener('submit', (e) => {
    let messages = []
    if(name.value === '' || name.value == null){
        messages.push('Name is required')
    }
    if(messages.length > 0){
        e.preventDefault()
        errorElement.innerText = messages.join(', ')
    }
    

})

form.addEventListener('submit', (e) => {
    let messages = []
    if(email.value === '' || email.value == null){
        messages.push('Name is required')
    }
    if(messages.length > 0){
        e.preventDefault()
        errorElement.innerText = messages.join(', ')
    }
    

})
form.addEventListener('submit', (e) => {
    let messages = []
    if(num.value === '' || num.value == null){
        messages.push('Name is required')
    }
    if(messages.length > 0){
        e.preventDefault()
        errorElement.innerText = messages.join(', ')
    }
    

})

form.addEventListener('submit', (e) => {
    let messages = []
    if(course.value === '' || course.value == null){
        messages.push('Name is required')
    }
    if(messages.length > 0){
        e.preventDefault()
        errorElement.innerText = messages.join(', ')
    }
    

})
form.addEventListener('submit', (e) => {
    let messages = []
    if(price.value === '' || price.value == null){
        messages.push('Name is required')
    }
    if(messages.length > 0){
        e.preventDefault()
        errorElement.innerText = messages.join(', ')
    }
    

})



