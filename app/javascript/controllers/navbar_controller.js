import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  initScrollEvent() {
  	const _this = this
  	window.addEventListener('scroll', (e) => {
  		_this.toggleNavbarBackground()
  	})
  }

  toggleNavbarBackground() {
  	const navbar = this.element
  	if (window.pageYOffset >= 50) {
			navbar.classList.add('bg-white/80', 'backdrop-blur-lg', 'backdrop-brightness-150')
		} else {
			navbar.classList.remove('bg-white/80', 'backdrop-blur-lg', 'backdrop-brightness-150')
		}
  }
}