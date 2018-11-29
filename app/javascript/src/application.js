// Bootstrap dependencies
import 'jquery/dist/jquery';
import 'bootstrap/dist/js/bootstrap.bundle';

// Rails dependencies
import Rails from 'rails-ujs';
Rails.start();

import Turbolinks from 'turbolinks';
Turbolinks.start();

import * as ActiveStorage from 'activestorage';
ActiveStorage.start();
