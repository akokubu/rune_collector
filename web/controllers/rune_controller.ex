defmodule RuneCollector.RuneController do
  use RuneCollector.Web, :controller

  def import(conn, _params) do

    path = "/var/tmp/runes.csv"

    # csvファイルをutf-8でオープン
    {:ok, fp} = File.open(path, [:read, :utf8])

    # 一行づつ読み込み
    Enum.each(IO.stream(fp, :line), fn(line) ->
        # IO.inspect(line)
        
        # カンマで分割し、リストからタプルに変換
        row = List.to_tuple( String.split(line, ",") )
  
        # IO.inspect row
#Primary effect,Prefix effect,First Substat,Second Substat,Third Substat,Fourth Substat,Barion's Rune Efficiency        
        runeId = elem(row, 0)
        equippedToMonster = elem(row, 1)
        runeSet = elem(row, 2)
        slotNo = elem(row, 3)
        starts = elem(row, 4)
        level = elem(row, 5)
        sellPrice = elem(row, 6)
        primaryEffect = elem(row, 7)
        prefixEffect = elem(row, 8)
        firstSubstat = elem(row, 9)
        secondSubstat = elem(row, 10)
        thirdSubstat = elem(row, 11)
        fourthSubstat = elem(row, 12)
        barionsRuneEfficiency = elem(row, 13)

        

        # # 前後の「"」を除去し、郵便番号(7桁)取得
        # zip = String.strip(elem(row, 2), ?")
        
        # # 住所は3つに分割されているので、結合
        # address = String.strip(elem(row, 6), ?")
        #             <> String.strip(elem(row, 7), ?")
        #             <> String.strip(elem(row, 8), ?")
        
        # IO.puts zip
        # IO.puts address

        IO.puts runeSet
        
    end)

    File.close(fp)





    render conn, "index.html"
  end
end
