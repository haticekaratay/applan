require './config/environment'

use Rack::MethodOverride
use TeachersController
use PlansController
run ApplicationController
