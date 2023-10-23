import './config/module-alias'

import app from '@/main/config/app'
import { env } from '@/main/config/env'

app.listen(process.env.PORT ?? 8080, () => console.log(`Server running at: http://localhost:${env.port}`))
