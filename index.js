const express = require('express')
const app = express()

const port = process.env.PORT || 8080
 // respond with "hello world" when a GET request is made to the homepage
app.get('*', function (req, res) {
  res.json({
      status:'ok',
      port,
      pid:process.pid
  })
})

app.listen(port, () => console.log(`app listening on port ${port}!`))
