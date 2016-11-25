require "erb"

module Utils
  module Analytics
    class << self
      def os_prefix_ci
        @anonymous_os_prefix_ci ||= begin
          os = OS_VERSION
          prefix = ", non-/usr/local" if HOMEBREW_PREFIX.to_s != "/usr/local"
          ci = ", CI" if ENV["CI"]
          "#{os}#{prefix}#{ci}"
        end
      end

      def report(type, metadata = {})
      end

      def report_event(category, action, label = os_prefix_ci, value = nil)
      end

      def report_exception(exception, options = {})
      end

      def report_screenview(screen_name)
      end
    end
  end
end
