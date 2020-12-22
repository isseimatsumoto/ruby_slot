puts "スロットゲームを始めます。"

@point = 0
@coin = 100

def slot
  puts "--------------------"
  puts "ポイント#{@point}"
  puts "残りコイン数#{@coin}"
  puts "何コイン入れますか？"
  puts "[0](10コイン)\n[1](30コイン)\n[2](50コイン)\n[3](やめとく)"
  puts "--------------------"

  slots = ["[0](10コイン)", "[1](30コイン)", "[2](50コイン)","[3](やめとく)"]
  player = gets.to_i


  if (player == 0) && (@coin >= 10) ||
     (player == 1) && (@coin >= 30) ||
     (player == 2) && (@coin >= 50)

     if (player == 0) && (@coin >= 10)
       @coin -= 10
     elsif (player == 1) && (@coin >= 30)
       @coin -= 30
     elsif (player == 2) && (@coin >= 50)
       @coin -= 50
     end

       puts "#{slots[player]}入れました。"
       puts "エンターを3回押しましょう！"
       firstNumber1 = rand(9).to_s
       firstNumber2 = rand(9).to_s
       firstNumber3 = rand(9).to_s
       puts "--------------------"
       puts "|"+ firstNumber1 +"|||"
       puts "|"+ firstNumber2 +"|||"
       puts "|"+ firstNumber3 +"|||"

                      input = gets
                      secondNumber1 = rand(9).to_s
                      secondNumber2 = rand(9).to_s
                      secondNumber3 = rand(9).to_s
                      puts "--------------------"
                      puts "|"+ firstNumber1 +"|"+ secondNumber1 +"||"
                      puts "|"+ firstNumber2 +"|"+ secondNumber2 +"||"
                      puts "|"+ firstNumber3 +"|"+ secondNumber3 +"||"

                        input = gets
                        thirdNumber1 = rand(9).to_s
                        thirdNumber2 = rand(9).to_s
                        thirdNumber3 = rand(9).to_s
                        puts "--------------------"
                        puts "|"+ firstNumber1 +"|"+ secondNumber1 +"|"+ thirdNumber1 +"|"
                        puts "|"+ firstNumber2 +"|"+ secondNumber2 +"|"+ thirdNumber2 +"|"
                        puts "|"+ firstNumber3 +"|"+ secondNumber3 +"|"+ thirdNumber3 +"|"

                          if (firstNumber1 == secondNumber1) && (secondNumber1 == thirdNumber1)
                            puts "上段に"+ firstNumber1 +"が揃いました！"
                          elsif (firstNumber1 == secondNumber2) && (secondNumber2 == thirdNumber3)
                            puts "斜めに"+ firstNumber1 +"が揃いました！"
                          elsif (firstNumber2 == secondNumber2) && (secondNumber2 == thirdNumber2)
                            puts "真ん中に"+ firstNumber2 +"が揃いました！"
                          elsif (firstNumber3 == secondNumber2) && (secondNumber2 == thirdNumber1)
                            puts "斜めに"+ firstNumber3 +"が揃いました！"
                          elsif (firstNumber3 == secondNumber3) && (secondNumber3 == thirdNumber3)
                            puts "下段に"+ firstNumber3 +"が揃いました！"
                          else
                            puts "-----"
                            puts "[0]続ける\n[1]やめる"
                            puts "-----"
                            retrySelect = ["[0]続ける", "[1]やめる"]
                            re_try = gets.to_i

                            if (re_try == 0)
                              return true
                            elsif (re_try >= 1)
                              puts "スロットゲームを終了します。"
                              return false
                            end
                          end

                              if (player == 0)
                                puts "100ポイント獲得！"
                                @point += 100
                                puts "20コイン獲得！"
                                @coin += 20

                              elsif (player == 1)
                                puts "300ポイント獲得！"
                                @point += 300
                                puts "60コイン獲得！"
                                @coin += 60

                              elsif (player == 2)
                                puts "500ポイント獲得！"
                                @point += 500
                                puts "100コイン獲得！"
                                @coin += 100
                              end

                                puts "-----"
                                puts "[0]続ける\n[1]やめる"
                                puts "-----"
                                retrySelect = ["[0]続ける", "[1]やめる"]
                                re_try = gets.to_i

                                if (re_try == 0)
                                  return true
                                elsif (re_try >= 1)
                                  puts "スロットゲームを終了します。"
                                  return false
                                end

  elsif (player == 0) && (@coin < 10) ||
        (player == 1) && (@coin < 30) ||
        (player == 2) && (@coin < 50)
    puts "コインが不足しています。"
    puts "スロットゲームを終了します。"
    return false

  else
    puts "スロットゲームを終了します。"
    return false
  end
end

next_game = true

while next_game do
  next_game = slot
end
