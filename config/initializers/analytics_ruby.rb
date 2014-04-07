Analytics = AnalyticsRuby #alias for convenience
Analytics.init({
  secret: '3p0rm001b7',
  on_error: Proc.new {|status, msg| print msg}
})
