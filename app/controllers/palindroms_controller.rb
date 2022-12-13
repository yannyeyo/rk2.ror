# frozen_string_literal: true

# Palindroms controller
class PalindromsController < ApplicationController

  def index; end

  def result
    number = params[:string]
    arrstring = number.split(' ').map(&:to_i)
    @res_arr = PalindromsController.start_array(arrstring)
    @res1_arr = PalindromsController.result_array(arrstring)
    redirect_to home_path, notice: 'Вводите числа >= 0' if @res_arr.size.zero?
  end

  def self.start_array(arrstring)
    arrstring.each do |word|
    end
  end

  def self.result_array(arrstring)
    sum = []
    j = 0;
    k = 0
    for i in (0..arrstring.size - 1) do
      j = arrstring[0];
      k = arrstring[1];
      if (arrstring[i] != j) and (arrstring[i] != k) then sum.push(arrstring[i])
      end
    end
    sum
  end
end
