function initUpdateNavbarOnScroll() {
  const navbar = document.querySelector('.navbar-wagon');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= document.querySelector(".main-page").offsetTop ) {
        navbar.classList.add('navbar-wagon-grey');
      } else {
        navbar.classList.remove('navbar-wagon-grey');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
