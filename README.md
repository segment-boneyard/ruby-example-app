ruby-example-app
==============

Set up a Ruby app with analytics.js and analytics-ruby

1. `rails new ruby-example-app`
2. `cd ruby-example-app`
3. Add `gem 'analytics-ruby', '~> 2.0.0', :require => 'segment/analytics'` to `Gemfile`.
4. Add a file called `analytics_ruby.rb` to config/initializers. In that file, add the following:
```
Analytics = Segment::Analytics.new({
  write_key: 'YOUR_WRITE_KEY',
  on_error: Proc.new { |status, msg| print msg }
})
```
5. Replace YOUR_WRITE_KEY with the key from your project setup page. 
6. Run, `bundle install`. Bam, server-side done.
7. Copy-paste Analytics.js [snippet](https://segment.io/docs/tutorials/quickstart-analytics.js/#step-1-copy-the-snippet) to header in app/views/layouts/application.html.erb
8. Replace YOUR_WRITE_KEY in the snippet with the key from your project setup page. BAM, client-side done.