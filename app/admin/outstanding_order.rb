ActiveAdmin.register_page "Outstanding Orders" do
  # orders = Order.where(:status => 'new')
  customers = Customer.includes(:orders)
                       .where(orders: { status: 'new' })
  @line_items = LineItem.all
  menu priority: 1, label: "Outstanding Orders" 

  content title: "Outstanding Orders" do
    # div class: "blank_slate_container" do
      span class: "blank_slate" do
        render 'shared/outstanding_orders'
      end
    # end

    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
