use Rack::Static,
  :urls => ['/js'],
  :root => 'public',
  :header_rules => [
    [:all, {'Access-Control-Allow-Origin' => '*'}],
  ]

run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/plain',
      'Cache-Control' => 'public, max-age=86400',
    },
    ['The Great jQuery Server'],
  ]
}
