const cardImages = document.querySelectorAll('.card-image');

image.addEventListener('mouseout', () => {
  image.classList.remove('zoomed');
});

cardImages.forEach((image) => {
  image.addEventListener('mouseover', () => {
    image.classList.add('zoomed');
  });
});