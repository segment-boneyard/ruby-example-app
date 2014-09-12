Analytics = Segment::Analytics.new({
  write_key: 'jfdi785ckh',
  on_error: Proc.new { |status, msg| print msg }
})