import express from 'express'
const app = express()

const port = process.env.PORT || 3000
 // respond with "hello world" when a GET request is made to the homepage
app.get('*', function (req, res) {
  res.json({
      status:'ok',
      port,
      pid:process.pid,
      node_env: process.env.NODE_ENV
  })
})

app.listen(port, () => console.log(`pid ${process.pid} listening on port ${port} with env ${process.env.NODE_ENV}!`))
