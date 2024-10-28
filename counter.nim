import dom

var count: int = 0

proc updateCounter(n: int) {.exportc.} =
    count += n
    let counterElem = document.getElementById("counter")
    if counterElem != nil:
        counterElem.innerText = $count

proc resetCounter() {.exportc.} =
    count = 0
    let counterElem = document.getElementById("counter")
    if counterElem != nil:
        counterElem.innerText = $count
