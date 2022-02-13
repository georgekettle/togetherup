import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

export default class extends Controller {
	connect() {
		const currentDate = new Date();
		const options = {

			altInput: true,
	    altFormat: "F j, Y",
	    dateFormat: "Y-m-d",
	    maxDate: currentDate
		}
		this.flatpickr = flatpickr(this.element, options);
	}

	disconnect() {
		this.flatpickr.destroy()
	}
}