#!/bin/bash

rake assets:clobber
rake assets:precompile RAILS_ENV=production
bin/dev