document.addEventListener("DOMContentLoaded", ()=>{
    var spaceship = document.getElementById('spaceshipone')

spaceship.onmousedown = function(event) {

    let shiftX = event.clientX - spaceship.getBoundingClientRect().left;
    let shiftY = event.clientY - spaceship.getBoundingClientRect().top;
  
    spaceship.style.position = 'absolute';
    spaceship.style.zIndex = 1000;
    document.body.append(spaceship);
  
    moveAt(event.pageX, event.pageY);
  
    // moves the spaceship at (pageX, pageY) coordinates
    // taking initial shifts into account
    function moveAt(pageX, pageY) {
      spaceship.style.left = pageX - shiftX + 'px';
      spaceship.style.top = pageY - shiftY + 'px';
    }
  
    function onMouseMove(event) {
      moveAt(event.pageX, event.pageY);
    }
  
    // move the spaceship on mousemove
    document.addEventListener('mousemove', onMouseMove);
  
    // drop the spaceship, remove unneeded handlers
    spaceship.onmouseup = function() {
      document.removeEventListener('mousemove', onMouseMove);
      spaceship.onmouseup = null;
    };
  
  };
  
  spaceship.ondragstart = function() {
    return false;
  };
})