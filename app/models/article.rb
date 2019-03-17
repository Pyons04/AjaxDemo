class Article < ApplicationRecord
    validates :title, presence: true,
        length: { minimum: 5 }

        SELECT_UNIVERSITIES = [["大学",[
          ["明治大学",1],
          ["立教大学",2],
          ["青山学院大学",3],
          ["法政大学",4],
          ["中央大学",5],
          ["学習院大学",6]
        ]
       ]]

     CHUO_UNI = [["学部",["法学部",1],["総合政策学部",2],["総合情報学部",3]]]
     MEIJI_UNI = [["学部",["政治経済学部",1],["商学部",2],["国際日本学部",3]]]
     RIKKYO_UNI = [["学部",["コミュニティ福祉学部",1],["理学部",2],["観光学部",3]]]
     HOUSEI_UNI = [["学部",["キャリアデザイン学部",1],["国際文化学部",2],["デザイン工学部",3]]]
     GAKUSHU_UNI = [["学部",["法学部",1],["国際社会科学部",2],["文学部",3]]]
     AOYAMA_UNI = [["学部",["国際政治経済学部",1],["総合文化政策学部",2],["地球社会共生学部",3]]]

     def meiji
      return MEIJI_UNI
     end     

     def chuo
      return CHUO_UNI
     end

     def rikkyo
      return RIKKYO_UNI
     end

     def housei
      return HOUSEI_UNI
     end

     def gakushu
      return GAKUSHU_UNI
     end

     def aoyama
      return AOUYAMA_UNI
     end
end
