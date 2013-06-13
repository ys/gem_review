# Public: Configuration key values for the application
#         CAPS_LOCK env keys are accessible under FB::Config.caps_lock
#
# Raises  EnvKeyMissing(key) if the key does not exists
#
# Returns The value of the key
#
module Env
  class EnvKeyError < StandardError; end
  def self.method_missing(name)
    raise EnvKeyError, name.to_s if ENV[name.to_s.upcase].nil?
    ENV[name.to_s.upcase]
  end

  def self.respond_to?(name)
    !ENV[name.to_s.upcase].nil?
  end
end
