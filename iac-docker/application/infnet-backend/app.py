
from pymongo import MongoClient
from flask import Flask, Blueprint
from flask_restplus import Resource
from restplus import api
from log import log
import werkzeug
werkzeug.cached_property = werkzeug.utils.cached_property

app = Flask(__name__)

ns_default = api.default_namespace

students = [{'name': 'Mauricio', 'age': 33},
            {'name': 'Luan', 'age': 20},
            {'name': 'Thiago', 'age': 23},
            {'name': 'Jessica', 'age': 20}]


client = MongoClient('mongodb://root:redhat@mongo:27017')
client.admin.authenticate('root', 'redhat')

db = client.admin


def drop_mongodb_collection():
    db.students.drop()


def insert_mongodb_collection():
    db.students.insert_many(students)


def list_mongodb_collections():
    return db.list_collection_names()


def get_all_students_name():

    students_name = []
    students = db.students.find()
    for student in students:
        students_name.append(student['name'])
    return students_name


@ns_default.route('/student_list',  methods=['GET'])
class ToolResource(Resource):
    @staticmethod
    def get():
        drop_mongodb_collection()
        insert_mongodb_collection()
        return get_all_students_name()


def initialize_app(app):
    app.config['RESTPLUS_VALIDATE'] = True
    app.config['ERROR_404_HELP'] = False

    blueprint = Blueprint('api', __name__)
    api.init_app(blueprint)
    app.register_blueprint(blueprint)

    api.add_namespace(ns_default)


def main():
    initialize_app(app)
    log.info('Starting server...')
    app.run(debug=True, host='0.0.0.0')


if __name__ == '__main__':
    main()
