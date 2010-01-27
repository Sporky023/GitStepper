# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_gitstepper_session',
  :secret      => '501dc6ebe82c221e85a3b40667bc979eee651dde1f8e732f4de1fed323af3b3cc8272e1a601d90858c6075e148c94db85777ee22fee651a0b461519978e538d0'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
