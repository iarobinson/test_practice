window.onload = init;

function init() {
  const timeSpan = document.getElementById('timer');

  const now = new Date().getTime();
  const deadline = mins * 60 * 1000 + now;


  setInterval(() => {
    var currentTime = new Date().getTime();
    var distance = deadline - currentTime;
    var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
    var seconds = Math.floor((distance % (1000 * 60)) / 1000);

    timeSpan.innerHTML = minutes + 's' + seconds;
  }, 500)
}
