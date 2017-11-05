// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
(function (doc, win) {
		var docEl = doc.documentElement,
		resizeEvt = 'orientationchange' in window ? 'orientationchange' : 'resize',
		recalc = function () {
			var clientWidth = docEl.clientWidth;
			if (!clientWidth) return;
			if(clientWidth>=640){
				docEl.style.fontSize = '100px';
			}else{
				docEl.style.fontSize = 100 * (clientWidth / 640) + 'px';
			}
		};
		if (!doc.addEventListener) return;
		win.addEventListener(resizeEvt, recalc, false);
		doc.addEventListener('DOMContentLoaded', recalc, false);
	})(document, window);



import Vue from 'vue'
import App from './App'
import router from './router'
// import animate from 'animate.css'

Vue.config.productionTip = false

/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  template: '<App/>',
  components: { App }
})
