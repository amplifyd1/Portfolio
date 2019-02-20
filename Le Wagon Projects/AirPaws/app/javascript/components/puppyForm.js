import swal from 'sweetalert';

function bindSweetAlertButtonDemo() {
  const swalButton = document.getElementById('sweet-alert');
  if (swalButton) { // protect other pages
    swalButton.addEventListener('click', () => {
      swal({
        title: "Puppy booking succesfull",
        text: "Have a wonderful time with a wonderful pup",
        icon: "success"
      });
    });
  }
}

export { bindSweetAlertButtonDemo };
