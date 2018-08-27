ActiveAdmin.register User do
  includes :client

  actions :index, :show, :edit, :update

  permit_params :first_name, :last_name, :email, :password,
                :password_confirmation

  filter :first_name_or_last_name_cont, as: :string, label: 'Name'
  filter :created_in_month_in, as: :select, label: 'Created in Month',
  collection: proc {
    User.all.map do |u|
      month_and_year = "#{u.created_at.month}-#{u.created_at.year}"
      [u.created_at.to_s(:month_and_year), month_and_year]
    end.uniq.to_h
  }

  index do
    selectable_column
    id_column
    column :client
    column :first_name
    column :last_name
    column :email
    column :created_at
    column :updated_at
    actions
  end

  show do
    panel 'User Details' do
      attributes_table_for user do
        row :client
        row :first_name
        row :last_name
        row :email
        row :created_at
        row :updated_at
        row :confirmation_token
        row :confirmed_at
        row :current_sign_in_at
        row :last_sign_in_at
        row :sign_in_count
      end
    end

    panel 'Associated Client' do
      attributes_table_for user.client do
        row :name
        row(:status, 'Status') { |client| client.status.titleize }
      end
    end
    active_admin_comments
  end

  form do |f|
    f.inputs do
      f.input :client, include_blank: false
      f.input :email
      f.input :first_name
      f.input :last_name
      f.input :password
      f.input :password_confirmation
      f.input :confirmed_at
    end
    f.actions
  end
end
