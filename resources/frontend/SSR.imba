import { Users } from './pages/Users'

export tag SSR
	prop users
	get ssr_users
		#users ||= JSON.parse this.getAttribute('ssr_users')
		this.removeAttribute('ssr_users') # IMPORTANT FOR DATA NOT TO BE SEEN IN VIEW SOURCE
		#users

	def render
		<self>
			<Users users=ssr_users>
