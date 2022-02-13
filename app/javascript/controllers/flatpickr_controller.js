import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

export default class extends Controller {
	connect() {
		const options = {
			altInput: true,
	    altFormat: "F j, Y",
	    dateFormat: "Y-m-d",
		}
		flatpickr(this.element, options);
	}
}