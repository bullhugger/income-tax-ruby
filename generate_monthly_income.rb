=begin
    Author: Jason Tan
    Date: 22/2/2021
    Adjustments to be considered:
    * Transaction rounding is not done.
    * A lot of calculations done in switch case. Would prefer those to be outside for better visibility.
    * Switch case is still integer range rather than float.
    * Maximum salary recorded is based on Elon Musk's highest paid CEO numbers article with no citation or journals. Would like more concrete evidence to set maximum amount of payslip transaction. https://www.indiatimes.com/technology/news/elon-musk-highest-paid-ceo-517816.html
=end

puts "Enter Name: "
name = gets.chomp

puts "Enter Net Income: "

def cal_tax(name)
    net_payslip = gets.chomp.to_f
    puts "Monthly Payslip for: #{name}"
    puts "Gross Monthly Income: $#{net_payslip}"
    after_tax = case net_payslip
    when 0..20000
        0
    when 20001..40000
        (net_payslip - 20000) * 10/100
    when 40001..80000
        ((net_payslip - 40000) * 20/100) + 2000
    when 80001..180000
        ((net_payslip - 100000) * 30/100) + 10000
    when 180001..250000000
        ((net_payslip - 180000) * 40/100) + 40000
    end
    puts "Monthly Income Tax: $#{after_tax}"
    income_after_tax = net_payslip - after_tax
    puts "Net Monthly Income: $#{income_after_tax}"
end

cal_tax(name)