// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import ConsoleController from "./console_controller.js"
application.register("console", ConsoleController)

import EyesController from "./eyes_controller.js"
application.register("eyes", EyesController)

import HelloController from "./hello_controller.js"
application.register("hello", HelloController)

import TooltipController from "./tooltip_controller.js"
application.register("tooltip", TooltipController)
