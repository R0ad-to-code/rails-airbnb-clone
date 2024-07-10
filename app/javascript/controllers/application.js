import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

import ToggleController from "./controllers/toggle_controller.js"
Stimulus.register("toggle", ToggleControllerController)
