document.body.onmousemove = function(event){
    dart.style.position = 'absolute'
    dart.style.top=`${event.clientY-100}px`
    dart.style.left=`${event.clientX}px`
}
round1.onclick = function(event){
    let current = number(result.innerText)
    current++
    result.innerText = current
}
round2.onclick = function(event){
    let current = number(result.innerText)
    current+=20
    result.innerText = current
}
round3.onclick = function(event){
    let current = number(result.innerText)
    current+=50
    result.innerText = current
}

function random(min,max){
    return Math.random(Math.random() * min + max)
}

setInterval(function(){
    let numberX = random(30,80)
    round1.style.left = `${numberX}%`
    round1.style.left = `${numberX}%`
    round2.style.left = `${numberX}%`

    let numberY = random(30,80)
    round1.style.left = `${numberY}%`
    round2.style.left = `${numberY}%`
    round3.style.left = `${numberY}%`
})