# Pin npm packages by running ./bin/importmap

pin 'application', preload: true
pin '@hotwired/turbo-rails', to: 'turbo.min.js', preload: true
pin '@hotwired/stimulus', to: 'stimulus.min.js', preload: true
pin '@hotwired/stimulus-loading', to: 'stimulus-loading.js', preload: true
pin 'vue', to: 'https://unpkg.com/vue@3/dist/vue.esm-browser.js'
pin '@vue/reactivity', to: 'https://ga.jspm.io/npm:@vue/reactivity@3.2.41/dist/reactivity.esm-bundler.js'
pin '@vue/runtime-core', to: 'https://ga.jspm.io/npm:@vue/runtime-core@3.2.41/dist/runtime-core.esm-bundler.js'
pin '@vue/runtime-dom', to: 'https://ga.jspm.io/npm:@vue/runtime-dom@3.2.41/dist/runtime-dom.esm-bundler.js'
pin '@vue/shared', to: 'https://ga.jspm.io/npm:@vue/shared@3.2.41/dist/shared.esm-bundler.js'

pin_all_from 'app/javascript/controllers', under: 'controllers'
pin_all_from 'app/javascript/components', under: 'components'
