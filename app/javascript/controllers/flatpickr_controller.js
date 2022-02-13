import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

export default class extends Controller {
	static values = {
		onlyFuture: {
			type: Boolean,
			default: false
		}
	}
	connect() {
		const options = {
			altInput: true,
	    altFormat: "F j, Y",
	    dateFormat: "Y-m-d",
	    maxDate: this.onlyFutureValue ? new Date() : null
		}
		this.flatpickr = flatpickr(this.element, options);
	}

	disconnect() {
		this.flatpickr.destroy()
	}
}