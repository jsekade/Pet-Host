var usersmodals = document.querySelectorAll(".user-modal");

usersmodals.forEach(modal => modal.addEventListener('click', showModal));

function showModal(e){
	$(`#${this.getAttribute("data-id")}`).modal('show');
}
console.log(usersmodals);