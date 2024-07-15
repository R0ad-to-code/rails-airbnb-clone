import { Controller } from "@hotwired/stimulus"
import Flatpickr from "stimulus-flatpickr"; // You need to import this to use new flatpickr()

export default class extends Controller {

  static Values = {
    data: Object
  };

  connect() {

    flatpickr(this.element)
    console.log("hello")
    flatpickr(this.element, {
      dateFormat: "Y-m-d",
      minDate: 'today',
      disable: JSON.parse(this.element.dataset.flatpickrDataValue).map(dateString => new Date(dateString)),
  })
  }
}
