require "slack-notify"
require 'clockwork'
include Clockwork

client = SlackNotify::Client.new(
  webhook_url: "https://hooks.slack.com/services/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",
  channel: "#テスト用チャンネル",
  username: "@testbot",
)

client.notify("Hello There!")


module Clockwork
# client = SlackNotify::Client.new(
#   webhook_url: ENV['https://hooks.slack.com/services/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'],
#   channel: "#テスト用チャンネル",
#   username: "@testbot",
# )
  every(3.minutes, "three_minutes") do
    sample = SlackNotify::Client.new(
      webhook_url: "https://hooks.slack.com/services/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",
      channel: "#テスト用チャンネル",
      username: "@testbot"
    )
    sample.notify("three_minutes 定期メッセージ")
  end
end
