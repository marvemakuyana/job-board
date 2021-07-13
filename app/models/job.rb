class Job < ApplicationRecord
    before_create :generate_ref, :generate_pack_ref

  
        def generate_ref
            self.ref = loop do
              random_token = SecureRandom.hex(6).upcase
              break random_token unless Job.exists?(ref: random_token)
            end
          end
          
          def generate_pack_ref
           self.post_pack_code = loop do
             o = [('a'..'z'), ('A'..'Z')].map(&:to_a).flatten
             string = (0...6).map { o[rand(o.length)] }.join.upcase
             break string unless Job.exists?(post_pack_code: string)
           end
          end
 
end