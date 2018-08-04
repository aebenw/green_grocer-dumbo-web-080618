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
  new_count = 0 
  discount = 0 
  new_count = 0 
 
  coupons.each do |discount|
    name = discount[:item]
    worth = discount[:cost]
    amount = discount[:num]
  
    cart.each do |obj, info|
      old_count = info[:count] 
      dis_count =  old_count / amount
      new_count = old_count % amount 
    end
  
  
  
    
      
      
      if cart.include?(name) && cart[name][:count] >= amount 
        cart[name][:count] =  new_count
        if cart["#{name} W/COUPON"]
        cart["#{name} W/COUPON"][:count] += 1
        else cart["#{name} W/COUPON"] = {:price => worth, :clearance => cart[name][:clearance], :count => 1}
        end
      end
  end
p cart
end
    

def apply_clearance(cart)
  cart.each do |obj, info|
    if info[:clearance] == true 
      (info[:price] *= 0.8).round(2)
    end
  end
    p cart 
end

def checkout(cart, coupons)
  # code here
end

