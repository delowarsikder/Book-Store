class ApplicationMailbox < ActionMailbox::Base
  # routing /something/i => :somewhere
  routing "support@example.con" => :support
end
