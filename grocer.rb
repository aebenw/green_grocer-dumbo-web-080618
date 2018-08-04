require "pry"

def consolidate_cart(cart)
  count = {}
  cart.each do |item|
      item.each do |name, info|
          if count.include?(name) 
          count[name][:count] += 1 
          else 
            count[name] = info
            count[name][:count] = 1 
          end
      end
  end
  count
end

def apply_coupons(cart, coupons)
  coupons.each do |discount|
    name = discount[:item]
    worth = discount[:cost]
    amount = discount[:num]
  
  
    new_count = 0 
    discount = 0 
    new_count = 0 
    cart.each do |obj, info|
      
      old_count = info[:count] 
      dis_count =  old_count / amount
      new_count = old_count % amount 
    end
      
      
      if cart.has_key?(name) && cart[name][:count] >= amount 
        cart[name][:count] =  new_count
        if cart.has_key?("#{name} W/COUPON")
        cart["#{name} W/COUPON"][:count] += dis_count
        else cart["#{name} W/COUPON"] = {:price => worth, :clearance => cart[name][:clearance], :count => 1}
        end
      end
  end
p cart
end
      
      
      
      
      
  #     info[:count] -= amount
  #     # 
  #     cart["#{obj} W/COUPON"][:price] = worth
  #     cart["#{obj} W/COUPON"][:clearance] = clear 
  #     cart["#{obj} W/COUPON"][:count] = new_count
  #     p cart
  #     # cart = cart.merge(new_cart)
  #   end
  #   else cart[] 
  # end
  # cart.delete_if {|obj, info| info[:count] == 0}


  
  # cart.each do |item, info|
    
    

# p coupons
#   x = []
#   new_hash = {}
#   coupons.reverse.each do |discount|
#     discount.each do |k, v|
#       x << v 
#     end
#   end

# value = 0 
# new_count = 0 
#   cart.each do |name, info|
#     info.each do |k, v|
#       if name == x[0]
        
#         new_hash["#{name} W/COUPON"] = {:price => x[2]}
#           if k == :count
#           new_count = v % x[1]
#           new_hash_count = v / x[1]
#           new_hash["#{name} W/COUPON"][:count] = new_hash_count
#           info[k] = new_count
#           end
#                 # binding.pry

#           if k == :clearance
#           new_hash["#{name} W/COUPON"][:clearance] = v 
#           end
#         end
#         # binding.pry
#           if x.length > 3
#           x.delete!(0..2)
#           end
#       end
#     end
# merged = cart.merge(new_hash)


# merged.each do |name, info|
#   info.each do |k, v|
#     if info[:count] == 0 
#       merged.delete(name)
#     end
#   end
# end
# p merged



def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end

# def consolidate_cart(cart)
#   count = Hash.new(0)
#   cart.each do |item|
#       item.each do |name, info|
#           count[name] += 1
#       end
#     end
    
#   cart.each do |item|
#       item.find do |name, info|
#         count.find do |kind, number|
#           if name == kind 
#             info[:count] = number
#           end
#         end
#       end
#     end
#     p cart
# end

# def apply_coupons(cart, coupons)
#   # code here
# end

# def apply_clearance(cart)
#   # code here
# end

# def checkout(cart, coupons)
#   # code here
# end

