ActiveRecord::Schema.define(version: 20151214003528) do

  enable_extension "plpgsql"

  create_table "flavors", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "order_flavors", force: :cascade do |t|
    t.integer "wing_order_id", null: false
    t.integer "flavor_id",     null: false
  end

  create_table "wing_orders", force: :cascade do |t|
    t.string  "customer_name",                  null: false
    t.string  "city",                           null: false
    t.string  "state",                          null: false
    t.integer "quantity",                       null: false
    t.boolean "ranch_dressing", default: false, null: false
  end

end
