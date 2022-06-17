import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="console"
export default class ConsoleController extends Controller {
  // Called by:
  // data-action="resize@window->console#logEvent offline@window->console#logEvent"
  // data-action="click->console#logEvent"
  // data-action="mouseover->console#logEvent"
  // data-action="change->console#logEvent paste->console#logEvent"
  logEvent(event) {
    console.log(event.type)
  }
};
