# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_10_27_224436) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "ano_importado_csvs", force: :cascade do |t|
    t.boolean "processado", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "despesas", force: :cascade do |t|
    t.integer "subcota"
    t.string "descricao"
    t.integer "especificosubcota"
    t.string "descricao_especifica"
    t.datetime "data", precision: nil
    t.decimal "vl_documento"
    t.decimal "vl_liquido"
    t.integer "mes_ref"
    t.integer "ano_ref"
    t.integer "numero_parcelas"
    t.string "numero_documento"
    t.integer "fornecedor_id"
    t.integer "parlamentar_id"
    t.integer "ano_importado_csv_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fornecedors", force: :cascade do |t|
    t.string "nome"
    t.string "cpf_cnpj"
    t.integer "ano_importado_csv_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parlamentars", force: :cascade do |t|
    t.string "nome"
    t.string "cpf"
    t.integer "cadastro"
    t.integer "carteira_parlamentar"
    t.integer "legislatura"
    t.string "sigla_uf"
    t.string "sigla_partido"
    t.integer "ano_importado_csv_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
end
