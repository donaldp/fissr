## Formidable SSR for Imba

This is a SSR test for Imba and Formidable.

> This doens't work yet, and will probably never work. But lets see if we can get it working.

### How to run

```bash
cp .env.example .env
pnpm install
node craftsman key:generate
node craftsman config:cache
node craftsman serve --dev
```

You can use `npm` if you don't `pnpm` installed.

### Where to start

The file that's supposed to show all users is located at `resources/frontend/pages/Users.imba`.

This file is loaded by the `resources/views/app.imba` file as `initSSR`.

#### The code

```imba
export tag Users
    prop users = []

    prop counter = 0

    def render
        <self>
            # this works
            if $node$
                console.log 'running in the server'

                const { DB } = require('@formidablejs/framework')

                const results = await DB.table('users')

                users = results

                console.log users

            <button @click=counter++> "Clicked {counter} times"

            <h1> "Users"

            # but this doens't :(

            for user in users
                <p> user.name

```
