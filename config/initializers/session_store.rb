# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_echologic_redirect_session',
  :secret      => 'eeed0739c0470a56a74b8ab125ec46b7dc60518df387265b0169c8a4869f431ddc0fcda08a89b3eda6863bca7604f4527d61f1a0efb08e4cfd5d1f52ee25d94b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
