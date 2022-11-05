import { createApp } from 'vue'

export const navbar = createApp({
  methods: {
    menuHandler() {
      this.menuShow = !this.menuShow
    }
  },
  data() {
    return {
      title: 'hello world!',
      menuShow: false,
    }
  }
}).mount('#navbar')
