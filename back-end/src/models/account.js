const mongoose = require('mongoose');
const { Schema } = mongoose;

const Member = new Schema({ 
    id : String,
    pw : String,
    nm : String
})

const Classification = new Schema({ 
    main_category : String,
    middle_category : String,
    sub_category : String,
})

const Place = new Schema({ 
    division : Classification,
    nm : String
})

const Account_Book = new Schema({
    dt: {
        type : Date,
        default : Date.now
    },
    writer: Member,
    amount: Number,
    purpose : String,
    memo : String,
    place : Place,
    classification : Classification
});

module.exports = mongoose.model('Account_Book', Account_Book);