# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Login::Application.config.secret_key_base = 'e446cf58c573516f77b1f632b1fc020cba50520a1937a985d335583f11b101db392d27f77147cd5c5e77b9b0b5169ec3c3d6fcfd1a561817b27a7559f0503db4'
