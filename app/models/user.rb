class User < ActiveRecord::Base
	has_many :messages
  has_many :events
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable ,:omniauthable
  has_attached_file :profile_photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :profile_photo, :content_type => /\Aimage\/.*\Z/
  
  def self.find_for_google_oauth2(access_token, signed_in_resource=nil)
    data = access_token.info
    user = User.where(:provider => access_token.provider, :uid => access_token.uid ).first
    if user
      return user
    else
      registered_user = User.where(:email => access_token.info.email).first
        if registered_user
          return registered_user
        else
          user = User.create(email: data["email"], 
          provider: access_token.provider,
          name: data["name"],
          uid: access_token.uid,
          password: Devise.friendly_token[0,20],
          #refresh_token: access_token[:credentials][:refresh_token],
          token: access_token[:credentials][:token],
          trash: false,
          role_id: "1"
           )
        end
    end
  end

  # def self.from_omniauth(auth)
  #   where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
  #   user.email = auth.info.email
  #   user.password = Devise.friendly_token[0,20]
  #   user.token = auth[:credentials][:token]
  #   user.name = auth[:extra][:raw_info][:name]
  #   end
  # end
  def self.from_omniauth(auth, signed_in_resource=nil)
    user = User.where(:provider => auth.provider, :uid => auth.uid).first
    if user
      return user
    else
      registered_user = User.where(:email => auth.info.email).first
      if registered_user
        return registered_user
      else
        user = User.create(name:auth.extra.raw_info.name,
                            provider:auth.provider,
                            uid:auth.uid,
                            email:auth.info.email,
                            password:Devise.friendly_token[0,20],
                            token: auth.credentials.token,
                            trash: false,
                            role_id: "3"
                          )
      end
    end
  end

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      all
    end
  end

  def self.all_user
    User.all.order(created_at: :desc).where(:trash => "false") 
  end

  def self.all_trash_user
    User.all.order(created_at: :desc).where(:trash => "true") 
  end

  def self.update_user(id ,user)
    @user = user
    @user = User.find(id)
    @user.update(user)
  end

  def self.homeshowdata(id)
    User.find(id)  
  end

  def self.homecreate(user_p)
    @user = User.new(user_p)
    @user.save
  end
  
  def gmaps4rails_address
    "#{country}, #{state}"
  end
end
