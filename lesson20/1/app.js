/*1. Создайте сами в html Картинку img с айди myimg. Потом уже в js Сделать 2 prompt. Где вы будете спрашивать у человека ссылку на картинку. И так же на сколько градусов повернуть. 
Проверяете, чтобы в первом промте была ссылка. А во втором было только число. И вставялете пять раз картину с одним и тем же рисунком и каждый раз крутите эту картинку на тот градус,
что указали в промт. Например ввёл человек 45, то первая картинка с поворотом на 45, вторая на 90, 3 - 135 и т.д.
<img id=myimg src=ssilkaNaImgIzPrompt style=(vspomnite kak krutit v css)>
PS. rotate...*/


let img = prompt ("Пожалуйста скопируйте ссылку на картинку")
let rotate_deegre=prompt("Введите градус поворота картинки")
let myimg=document.getElementById("myimg")
myimg.src=img
myimg.style.transform="rotate("+`${rotate_deegre}`+"deg)"
img
document.body.appendChild(myimg)



let img = "https://i.pinimg.com/originals/b7/7b/82/b77b8270cc1a0c307de6ff2d5d74f6c2.jpg"
let rotate_deegre="10"
let myimg = document.getElementById("myimg")
myimg
myimg.src = img
myimg.style.transform="rotate("+`${rotate_deegre}`+"deg)"










