ActiveAdmin.register Client do
  includes :users

  actions :index, :show, :edit, :update

  permit_params :name, :status

  filter :name
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  index do
    selectable_column
    id_column
    column :name
    column('Number of Users') { |client| client.users.length }
    column(:status, 'Status') { |client| client.status.titleize }
    column :created_at
    column :updated_at
    actions
  end

  show do
    panel 'Client Details' do
      attributes_table_for client do
        row :name
        row('Number of Users') { |client| client.users.length }
        row(:status, 'Status') { |client| client.status.titleize }
        row :created_at
        row :updated_at
      end
    end

    panel 'Associated Users' do
      table_for client.users do
        column :first_name
        column :last_name
        column :email
        column :created_at
      end
    end
    active_admin_comments
  end

  scope :all, default: true
  scope("Red") { |scope| scope.where(status: 'red') }
  scope("Non-Red") { |scope| scope.where.not(status: 'red') }

  form do |f|
    f.inputs do
      f.input :name
      f.input :status, include_blank: false
    end
    f.actions
  end

end
