namespace :update do
  desc 'ライダーのプロフィール画像を更新する'
  task :profile_image => :environment do
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV['TWITTER_CONSUMER_KEY']
      config.consumer_secret     = ENV['TWITTER_CONSUMER_SECRET']
      config.access_token        = ENV['TWITTER_ACCESS_TOKEN']
      config.access_token_secret = ENV['TWITTER_ACCESS_TOKEN_SECRET']
    end

    Rider.where.not(twitter: nil).each do |rider|
      rider.update(avatar: client.user(rider.twitter).profile_image_uri('400x400'))
    end
  end
end
