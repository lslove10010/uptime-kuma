module.exports = {
    apps: [{
        name: "uptime-kuma",
        script: "./server/server.js",
        env: {
            PORT: "port",
            PLAYWRIGHT_BROWSERS_PATH: "/nonexistent"
        }
    }]
};
