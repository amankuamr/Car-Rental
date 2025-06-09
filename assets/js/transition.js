// transition.js

document.addEventListener("DOMContentLoaded", function() {
    const links = document.querySelectorAll("a:not([target='_blank']):not([href^='#'])");
  
    links.forEach(link => {
      link.addEventListener("click", function(e) {
        // Create ripple
        const ripple = document.createElement("span");
        ripple.classList.add("ripple");
  
        const rect = this.getBoundingClientRect();
        ripple.style.left = `${e.clientX - rect.left}px`;
        ripple.style.top = `${e.clientY - rect.top}px`;
  
        this.appendChild(ripple);
  
        setTimeout(() => {
          ripple.remove();
        }, 600);
  
        // Smooth fade and slide
        e.preventDefault();
        const href = this.getAttribute("href");
        document.body.classList.add("fade-out");
  
        setTimeout(function() {
          window.location.href = href;
        }, 500);
      });
    });
  });
  