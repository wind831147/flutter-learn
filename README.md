# flutter-learn
learn flutter

先安裝flutter sdk

將flutter 加入環境變數 Start

sudo vim ~/.bash_profile
sudo vim ~/.zshrc

export PATH=$PATH:{FLUTTER_PATH}
export PATH=$PATH:/Users/user/Downloads/flutter/bin

source ~/.bash_profile\n
source ~/.zshrc

將flutter 加入環境變數 End

產生flutter 專案 flutter Create {project Name}


安裝xcode

檢查xcode目前指定的程式 xcode-select -p 
如果與實際路徑不一致 或要指定別的版本的xcode

sudo xcode-select --switch /path/to/new/Xcode.app


執行flutter

cd flutter/project

flutter run 
