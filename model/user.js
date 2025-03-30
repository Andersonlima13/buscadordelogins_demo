const mongoose = require('mongoose')


const User = mongoose.model('User' , {
    email : String,
    password : String,
    perfil: { type: String, required: true }
})


module.exports = User 