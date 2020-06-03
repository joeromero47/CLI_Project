#environment setup

require 'bundler/setup'
Bundler.require(:default)

require_relative "./RM_Character_CLI/api"
require_relative "./RM_Character_CLI/cli"
require_relative "./RM_Character_CLI/RM_Character"

