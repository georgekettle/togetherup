import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
	connect() {
		this.initScrollEvent()
	}

  initScrollEvent() {
  	const _this = this
  	window.addEventListener('scroll', (e) => {
  		_this.toggleNavbarBackground()
  	})
  }

  toggleNavbarBackground() {
  	const navbar = this.element
  	if (window.pageYOffset >= 50) {
			navbar.classList.add('bg-white', 'border-b-2', 'border-black')
		} else {
			navbar.classList.remove('bg-white', 'border-b-2', 'border-black')
		}
  }
}