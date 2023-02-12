require('dotenv').config();

const Koa = require('koa');
const app = new Koa();

const mongoose = require('mongoose');

mongoose.Promise = global.Promise; // Node 의 네이티브 Promise 사용
// mongodb 연결
mongoose.connect(process.env.MONGO_URI)
.then(response => {
    console.log('Successfully connected to mongodb');
}).catch(e => {
    console.error(e);
});

const port = process.env.PORT || 4000;

app.use( ctx => {
    ctx.body = 'Hello';
})

app.listen(port, () => {
    console.log('Listening 400 Port')
})
