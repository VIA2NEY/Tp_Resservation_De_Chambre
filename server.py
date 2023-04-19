from flask import Flask, render_template, request, redirect, session, flash
# from flask_sqlalchemy import SQLAlchemy
from Models.models import db,Admin,Contact,Reservation,Accpted,Reject


app = Flask(__name__)

# db = SQLAlchemy()
app.config["SQLALCHEMY_DATABASE_URI"] = "mysql+pymysql://root:@localhost:3306/hotel_booking"
app.config['SECRET_KEY'] = "random string"
app.config["SQLALCHEMY_TRACK_MODIFICATIONS"] = False

db.init_app(app)


@app.route("/",)
def admin_login():

    return render_template("index.html")


@app.route("/admin")
def admin():
    if session.get('username'):
        record = Reservation.query.all()
        flash("Accpted successfully")
        # flash("Rejected successfully" )
        return render_template("admin/index.html", record=record)
    else:
        return render_template("admin/login.html")


@app.route("/home", methods=['POST', 'GET'])
def home():
    msg = "Login first"
    if request.method == "POST":

        username = request.form.get("username")
        password = request.form.get("password")
        record = Reservation.query.all()
        std = Admin.query.filter_by(name=username, password=password).first()
        if std:
            session['username'] = username
            return render_template("admin/index.html", record=record)
        else:
            flash("Incorrect password or user name")
            return render_template("admin/login.html", msg=msg)
    else:

        return render_template("admin/login.html", msg=msg)


@app.route("/contact", methods=['GET', 'POST'])
def contact():
    if request.method == 'POST':
        name = request.form.get('name')
        phone = request.form.get('phone')
        email = request.form.get('email')
        c = Contact(name=name, phone=phone, email=email)
        db.session.add(c)
        db.session.commit()
        flash("Contact  has been send successfully")
        return render_template("index.html")
    return render_template("index.html")


@app.route("/logout")
def logout():
    session.clear()
    return redirect('/')


@app.route("/reservation", methods=['GET', 'POST'])
def reservation():
    if request.method == 'POST':
        title = request.form.get('title')
        first_name = request.form.get('fname')
        last_name = request.form.get('lname')
        email = request.form.get('email')
        nationality = request.form.get('nation')
        phone = request.form.get('phone')
        type_of_room = request.form.get('troom')
        Bedding_Type = request.form.get('bed')
        Number_of_rooms = request.form.get('nroom')
        check_in = request.form.get('cin')
        check_out = request.form.get('cout')
        entry = Reservation(Title=title, first_name=first_name,
                            last_name=last_name, email=email,
                            nationality=nationality, phone=phone,
                            type_of_room=type_of_room,
                            Bedding_Type=Bedding_Type,
                            Number_of_rooms=Number_of_rooms,
                            check_in=check_in, check_out=check_out)
        db.session.add(entry)
        db.session.commit()
        flash("Room Book request has been send successfully")

    return render_template("/reservation.html")


@app.route("/Accept/<int:id>")
def accept(id):

    d = Reservation.query.get(id)
    apt = Reservation.query.filter_by(id=id).first()
    add = Accpted(name=apt.first_name, email=apt.email,
                  country=apt.nationality, type_of_room=apt.type_of_room,
                  bedding=apt.Bedding_Type, number_of_room=apt.Number_of_rooms,
                  check_in=apt.check_in, check_out=apt.check_out)
    db.session.add(add)
    db.session.delete(d)
    db.session.commit()
    return redirect("/")


@app.route("/reject/<int:id>")
def reject(id):
    d = Reservation.query.get(id)
    apt = Reservation.query.filter_by(id=id).first()
    add = Reject(name=apt.first_name, email=apt.email,
                 country=apt.nationality, type_of_room=apt.type_of_room,
                 bedding=apt.Bedding_Type, number_of_room=apt.Number_of_rooms,
                 check_in=apt.check_in, check_out=apt.check_out)
    db.session.add(add)
    db.session.delete(d)
    db.session.commit()
    return redirect("/")


@app.route("/accepted")
def accepted():
    # msg=("Login First")
    if session.get('username'):
        record = Accpted.query.all()

    return render_template("admin/accept.html", record=record)


@app.route("/rejected")
def rejected():
    msg = ("Login First")
    if session.get('username'):
        record = Reject.query.all()
        return render_template("admin/reject.html", record=record)
    return render_template("admin/login.html", msg=msg)


@app.route("/Delete/<int:id>")
def delete_accept(id):
    d = Accpted.query.get(id)
    db.session.delete(d)
    db.session.commit()
    return redirect("/accepted")


@app.route("/reject_delete/<int:id>")
def delete_reject(id):
    d = Reject.query.get(id)
    db.session.delete(d)
    db.session.commit()
    return redirect("/rejected")


if __name__ == "__main__":

    app.run(debug=True, port=4000)
