export tag Users
	prop users = []

	prop counter = 0

	def render
		<self>
			# THIS SEEMS TO BE REQUIRED FOR SOME REASON
			if $node$
				<div [d:none]>
				# <p> 'running in the server'
			# IF YOU UNCOMMENT THIS SERVER SIDE RENDERING DOESNT WORK FOR SOME REASON
			# if $web$ 
			# 	<p> 'running in the browser'
			<button @click=counter++> "Clicked {counter} times"
			<h1> "Users"
			for user in users
				<p> user.name
