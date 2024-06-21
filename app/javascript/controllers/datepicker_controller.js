import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";
// Connects to data-controller="datepicker"
export default class extends Controller {
  // static targets = [ "startDay", "endDay" ]
  connect() {
    flatpickr(this.element);
    // console.log(`${this.startDayTarget}`)
    // flatpickr(this.startDayTarget, {})
    // flatpickr(this.endDayTarget, {})
  }
}
