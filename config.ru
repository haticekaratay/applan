require './config/environment'

use Rack::MethodOverride
use SessionsController
use TeachersController
use PlansController
run ApplicationController
