import { Controller } from "@hotwired/stimulus"
import Flatpickr from "stimulus-flatpickr"; // You need to import this to use new flatpickr()

export default class extends Controller {

  connect() {
    flatpickr(this.element)
    console.log("hello flatpicker")
  }


}
