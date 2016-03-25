class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, #:registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :answer , dependent: :destroy
  def email_required?
    false
  end
  # 暗号化
  def encryptor
    secret = 'fe6e948cbdc86cb6c7a15a4cb427d413b529f5b0abd03d66271a852ffcad0f5537ba2f6906cabd14147f8885053a6112a83984e4658d14e5ab87c2e015d76c2af6a6a057e049758ebd5549092672eafeb84e3c8abf8bfc3ab8a93fe89f1040720da753676e758196fa63a42758e89625df0be4298577ac24199ff5bde3a55a4c'
     #ものはためし
    ::ActiveSupport::MessageEncryptor.new(secret)
  end

  # 名前
  def name=(val)
    encryptor = self.encryptor
    write_attribute("name",encryptor.encrypt_and_sign(val))
  end

  def name
    encryptor = self.encryptor
    encryptor.decrypt_and_verify(read_attribute("name"))
  end
end
