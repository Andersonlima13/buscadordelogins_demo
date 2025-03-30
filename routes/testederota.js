const express = require('express');
const router = express.Router();


router.get('/testederota', (req, res) => {
    res.render('testederota');
  });


module.exports = router;
