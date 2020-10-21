class Medic < ApplicationRecord

  def self.matches(field_name, param) 
    where("#{field_name} ilike ?", "%#{param}%")
  end

  def self.search(param)
    param.strip!
    to_send_back = (ccg_matches(param) + postcode_matches(param) + practice_name_matches(param) + address_matches(param) + list_size_matches(param) + brick_matches(param) + telephone_matches(param)).uniq 
    return nil unless to_send_back
    to_send_back
  end

  def self.ccg_matches(param)
    matches('ccg', param)
  end

  # def self.group_matches(param) removed this as was creating error - possibly group is a reserved term?
  #   matches('group', param)
  # end

  def self.postcode_matches(param)
    matches('postcode', param)
  end

  def self.practice_name_matches(param)
    matches('practice_name', param)
  end

  def self.address_matches(param)
    matches('address', param)
  end

  def self.list_size_matches(param)
    matches('list_size', param)
  end

  def self.brick_matches(param)
    matches('brick', param)
  end

  def self.telephone_matches(param)
    matches('telephone', param)
  end
end
