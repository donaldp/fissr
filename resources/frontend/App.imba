# import { FormProgress } from '@formidablejs/view'
# import { Welcome } from './pages/Welcome'
import '../css/app.css'

# export tag App
# 	def render
# 		<self>
# 			<FormProgress observeUrl>

# 			<Welcome route="/">
import { Users } from './pages/Users'

export tag InnerApp

	def render
		<self>
			<Users route='/'>
