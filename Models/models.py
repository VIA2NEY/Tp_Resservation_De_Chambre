from flask_sqlalchemy import SQLAlchemy

from datetime import datetime

db = SQLAlchemy()


class Contact(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(100), nullable=False)
    email = db.Column(db.String(100), nullable=False)
    phone = db.Column(db.String(100), nullable=False)
    date_created = db.Column(db.DATE, default=datetime.now())

class Admin(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(100), nullable=False)
    password = db.Column(db.String(100), nullable=False)

class Reservation(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    Title = db.Column(db.String(100), nullable=False)
    first_name = db.Column(db.String(100), nullable=False)
    last_name = db.Column(db.String(100), nullable=False)
    email = db.Column(db.String(100), nullable=False)
    nationality = db.Column(db.String(100), nullable=False)
    phone = db.Column(db.String(100), nullable=False)
    type_of_room = db.Column(db.String(100), nullable=False)
    Bedding_Type = db.Column(db.String(100), nullable=False)
    Number_of_rooms = db.Column(db.String(100), nullable=False)
    check_in = db.Column(db.String(100), nullable=False)
    check_out = db.Column(db.String(100), nullable=False)
    # date_created = db.Column(db.DATE, default=datetime.now())

class Accpted(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(100), nullable=False)
    email = db.Column(db.String(100), nullable=False)
    country = db.Column(db.String(100), nullable=False)
    type_of_room = db.Column(db.String(100), nullable=False)
    bedding = db.Column(db.String(100), nullable=False)
    number_of_room = db.Column(db.String(100), nullable=False)
    check_in = db.Column(db.String(100), nullable=False)
    check_out = db.Column(db.String(100), nullable=False)


class Reject(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(100), nullable=False)
    email = db.Column(db.String(100), nullable=False)
    country = db.Column(db.String(100), nullable=False)
    type_of_room = db.Column(db.String(100), nullable=False)
    bedding = db.Column(db.String(100), nullable=False)
    number_of_room = db.Column(db.String(100), nullable=False)
    check_in = db.Column(db.String(100), nullable=False)
    check_out = db.Column(db.String(100), nullable=False)

