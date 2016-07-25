Deface::Override.new(
  virtual_path: 'spree/admin/shared/_product_sub_menu',
  name: 'add_gift_card_admin_sub_menu_tab',
  insert_bottom: '[data-hook="admin_product_sub_tabs"]',
  text: '<%= tab :gift_cards, url: spree.admin_gift_cards_path %>'
)
