import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="gauge"
export default class extends Controller {
  static values = { color: String }

  connect() {

  }

  flop() {
    this.element.classList.toggle(`gauge-${this.colorValue}`)    
  }
}
