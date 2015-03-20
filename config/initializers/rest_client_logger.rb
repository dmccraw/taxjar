# RestClient logs using << which isn't supported by the Rails logger,
# so wrap it up with a little proxy object.
unless Rails.env.production?
  RestClient.log =
    Object.new.tap do |proxy|
      def proxy.<<(message)
        ap message
        Rails.logger.info message
      end
    end
end