require 'ldclient-rb'
require_relative 'colored_logger'
LAUNCH_DARKLY_SDK_KEY = "add key here!"

class Feature
  def self.launch_darkly_agent
    # LD prints everything in the color of the running worker.
    config = LaunchDarkly::Config.new({logger: ColoredLogger.new($stdout)})
    @ld_agent ||= LaunchDarkly::LDClient.new(LAUNCH_DARKLY_SDK_KEY, config)
  end

  def self.new_brand?
    launch_darkly_agent.variation("order-rebrand",{ key: "" },false)
  end
end
