const Pool = require('pg').Pool;

const pool = new Pool({
    user:'lennydimet',
    password: 'password',
    host: 'localhost',
    port: 5432,
    database: 'authtodolist'
});
module.exports = pool; 