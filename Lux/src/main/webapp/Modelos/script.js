const cardImages = document.querySelectorAll('.card-image');

cardImages.forEach((image) => {
  image.addEventListener('mouseover', () => {
    image.classList.add('zoomed');
  });

  image.addEventListener('mouseout', () => {
    image.classList.remove('zoomed');
  });
});