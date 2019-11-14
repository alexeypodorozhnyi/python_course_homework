function creatEllByTag(element){
   return  element=document.createElement(element)
}

function appendTag(element){
    return document.body.appendChild(element)
}

let element=creatEllByTag("img")
appendTag(element)

function deleteTag(id){
    if (document.getElementById(id)==null){
        return console.log("You have not this element on this page")
    }
    else{
        document.body.removeChild(document.getElementById(id))
        return console.log("The element have been deleted")
    }
}

deleteTag("id")

function getInnerTextOfElement(text){
var allElements = document.getElementsByTagName("*");
var allIds = [];
for (var i = 0, n = allElements.length; i < n; ++i) {
  var el = allElements[i];
  if (el.id) { 
      allIds.push(el.id);0
    }
}
for (i=0, n = el.length; i < n; ++i){
    str+=document.getElementById(el[i]).innerText(text)
}
}
return str


function getElement(name){
let info = document.getElementsByTagName(name)
return info










