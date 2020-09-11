import path from 'path'
import fs from 'fs'

import compiler from 'imba/dist/compiler'

const code = fs.readFileSync(path.join(__dirname, 'src', 'mangfold.imba'), 'utf-8')
const res = compiler.compile(code, {filename: 'mangfold.imba', target: 'node'})

const output = "#!/usr/bin/env node\n{res.js}"
fs.writeFileSync(path.join(__dirname, 'build', 'mangfold.js'), output)