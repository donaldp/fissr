import './bootstrap'
import { waitForProps } from '@formidablejs/view'
import { InnerApp } from './App'

def main
	imba.unmount document.querySelector('#app').firstChild
	const users = JSON.parse document.querySelector('#app').getAttribute('ssr_users')
	const {data} = await axios("/api/users")
	imba.mount <InnerApp users=data>, document.querySelector '#app'

# UNCOMMENT THIS FOR BROWSER RENDERING
main! 