x = require('casper').selectXPath
casper = require('casper').create {
  verbose: true
  logLevel: 'debug'
  timeout: 30000
  pageSettings: {
    loadImages:  true
    loadPlugins: false
    userAgent: 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2030.0 Safari/537.36'
  }
}
casper.options.viewportSize = {width: 1276, height: 706}
casper.on('page.error', (msg, trace) ->
   this.echo('Error: ' + msg, 'ERROR')
   for i in trace
     step = trace[i]
     @echo('   ' + step.file + ' (line ' + step.line + ')', 'ERROR')
)
casper.start('http://localhost:8008/www.mecstatic.com/')

casper.then () ->
  this.waitFor () ->
    sidebarOpener = @evaluate((sel) ->
      $sidebarOpener = document.querySelector sel
      return $sidebarOpener
    , '.sidebar-opener')

casper.then () ->
  this.capture('initial.jpg', undefined, {
      format: 'jpg',
      quality: 75
  })

casper.wait 1000

casper.then () ->
  this.thenClick '.sidebar-opener'
  this.wait 2000

casper.then () ->
  this.capture('body.jpg', undefined, {
      format: 'jpg',
      quality: 75
  })

casper.then () ->
  @captureSelector('sidebar.png', '.mobile--sidebar')

casper.run () ->
  @debugPage()
  @exit()
