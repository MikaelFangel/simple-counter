import dom

var count: int = 0

proc incrementCounter() {.exportc.} =
    count += 1
    let counterElem = document.getElementById("counter")
    if counterElem != nil:
        counterElem.innerText = $count

proc resetCounter() {.exportc.} =
    count = 0
    let counterElem = document.getElementById("counter")
    if counterElem != nil:
        counterElem.innerText = $count
