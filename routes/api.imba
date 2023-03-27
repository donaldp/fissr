import { Request } from '@formidablejs/framework'
import { Route } from '@formidablejs/framework'
const { DB } = require('@formidablejs/framework')

# --------------------------------------------------------------------------
# API Routes
# --------------------------------------------------------------------------
#
# Here is where you can register API routes for your application. These
# routes are loaded by the RouteServiceResolver within a group which
# is assigned the "jwt" middleware group.

Route.get('/user', do(request\Request)
	request.auth!.user!
).middleware(['auth'])

Route.get('/users', do(request\Request)
	await DB.table('users')
)
