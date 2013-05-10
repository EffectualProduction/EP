# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

<<<<<<< HEAD
ActiveRecord::Schema.define(:version => 20130510151111) do
=======
ActiveRecord::Schema.define(:version => 20130429161920) do
>>>>>>> 235bd7d453691412561f0aeb4c18a482af6e15ce

  create_table "bordados", :force => true do |t|
    t.date     "fecha_envio"
    t.date     "fecha_llegada"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "datoscontactos", :force => true do |t|
    t.string   "apellido"
    t.string   "direccion"
    t.string   "email"
    t.string   "movil"
    t.string   "nombre"
    t.string   "telefono"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "disenos", :force => true do |t|
    t.string   "color"
    t.string   "corte"
    t.string   "talla"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "estampados", :force => true do |t|
    t.date     "fecha_envio"
    t.date     "fecha_llegada"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "notas", :force => true do |t|
    t.string   "items"
    t.string   "num_documento_recibe"
    t.integer  "unidad"
    t.string   "tipo"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "producciones", :force => true do |t|
    t.date     "fecha_envio"
    t.date     "fecha_llegada"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "registrocompras", :force => true do |t|
    t.string   "descripcion_producto"
    t.integer  "valor_total"
    t.integer  "valor_unidad"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "solicitudes", :force => true do |t|
    t.integer  "cantidad"
    t.integer  "cliente_id"
    t.integer  "dias_faltantes"
    t.date     "fecha_aprobacion"
    t.date     "fecha_entrega_cliente"
    t.date     "fecha_solicitud"
    t.integer  "instructor_id"
    t.string   "producto"
    t.string   "resolucion"
    t.integer  "saldo"
    t.integer  "total"
    t.integer  "unidades_entregadas"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

<<<<<<< HEAD
  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

=======
>>>>>>> 235bd7d453691412561f0aeb4c18a482af6e15ce
  create_table "usuarios", :force => true do |t|
    t.string   "primapellido"
    t.string   "secapellido"
    t.string   "clave"
    t.string   "email"
    t.date     "fecha_nac"
    t.string   "primnombre"
    t.string   "secnombre"
    t.string   "num_cedula"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
