# import { FormProgress } from '@formidablejs/view'
# import { Welcome } from './pages/Welcome'
import '../css/app.css'
import { Users } from './pages/Users'

export tag InnerApp
	prop users

	def render
		<self>
			<p> 'running in the browser'
			<Users users=users route='/'>
