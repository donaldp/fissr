export tag Users
	prop users = []

	prop counter = 0

	def render
		<self>
			if $node$
				console.log 'running in the server'

				const { DB } = require('@formidablejs/framework')

				const results = await DB.table('users')

				users = results

				console.log users

			<button @click=counter++> "Clicked {counter} times"

			<h1> "Users"

			for user in users
				<p> user.name
