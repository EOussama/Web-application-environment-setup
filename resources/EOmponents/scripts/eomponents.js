// Progress Bar
function setProgressBar(progressBar, value = 0) {
	value = value > 100 ? 100 : value < 0 ? 0 : value;
	
	progressBar.style.width = `${value}%`;
	progressBar.querySelector('span.progressValue').textContent = value;
}

function incProgressBar(progressBar, value) {
	if(progressBar.querySelector('span.progressValue').textContent === '')
		progressBar.querySelector('span.progressValue').textContent = 0;
	
	setProgressBar(progressBar, Number(progressBar.querySelector('span.progressValue').textContent) + Number(value));
}

function decProgressBar(progressBar, value) {
	if(progressBar.querySelector('span.progressValue').textContent === '')
		progressBar.querySelector('span.progressValue').textContent = 0;
	
	setProgressBar(progressBar, Number(progressBar.querySelector('span.progressValue').textContent) - Number(value));
}

// Dropdowns
window.addEventListener('load', () => {
	const __dropdowns = document.querySelectorAll('div.dropdown');

	__dropdowns.forEach((__dropdown) => {
		let
			__trigger = __dropdown.querySelector('.btn'),
			__dropable = __dropdown.querySelector('div.btn-piano');

		__dropable.style.display = 'none';
		__trigger.addEventListener('click', () => {
			if(__dropable.style.display === 'none') {
				__dropable.style.top = (__trigger.offsetTop + __trigger.offsetHeight).toString() + 'px';
				__dropable.style.left = __trigger.offsetLeft + 'px';
				__dropable.style.display = 'inline';
				__trigger.classList.add('dropped');
			} else {
				__dropable.style.display = 'none';
				__trigger.classList.remove('dropped');
			}
		});
	});
});