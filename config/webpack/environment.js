const { environment } = require('@rails/webpacker')

// Preventing Babel from transpiling NodeModules packages

const webpack = require('webpack')
environment.plugins.prepend('Provide',
  new webpack.ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquery'
  })
)

environment.loaders.delete('nodeModules');
module.exports = environment
