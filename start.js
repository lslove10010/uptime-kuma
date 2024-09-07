const { spawn } = require('child_process');
const path = require('path');

const config = require('./ecosystem.config.js');
const app = config.apps[0];
const env = { ...process.env, ...app.env };
const scriptPath = path.resolve(app.script);
const args = app.args ? app.args.split(' ') : [];
const child = spawn('node', [scriptPath, ...args], { 
    env, 
    stdio: 'inherit',
    cwd: process.cwd()
});

child.on('close', (code) => {
    console.log(`Child process exited with code ${code}`);
});
