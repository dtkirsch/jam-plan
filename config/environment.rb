# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
JamPlan::Application.initialize!

# Date/Time formatting:
Time::DATE_FORMATS[:clock_time] = "%-I:%M %p"
