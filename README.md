# tnkv-dotfiles
Дотфайлы игоря танкова успешно украденые у глеба васильева
# Что в входит в этот репо
st — simple terminal — простой терминал, обязательно для установки dmw <br>
dwm — dynamic window manager — отличный тайловый оконный менеджер <br>
dmenu — программа для запуска других программ, обязательно для установки dwm <br>
zsh — shell — отличная замена стандартному bash + плагины в комплекте <br>
dmwblock — различные блоки информации для dwm, можно вывести любую команду в верхную панель <br>
polybar — прокаченый бар, возможно вывести интерактивные модули <br>
обои которые я юзаю — обои просто <br>
# Установка 
Перед установкой рекомендуется в папке пользователя создать директорию build, куда потом скопировать этот репозиторий командой 
```
git clone https://github.com/tnkv/tnkv-dotfiles
```
## zsh
Пожалуй первое с чего надо начать, это установка zsh
### Debian based
```
apt install zsh
```
### Arch based
```
pacman -Sy zsh
```
Далее вы просто копируете zshrc в папку пользователя командой cp
```
cp build/tnkv-dotfiles/zsh/zshrc ~
```
И копируете тоже самое в папку /root, что бы конфиг был и при root пользователе.

что бы установить zsh по умолчанию, требуется
```
chsh -s /bin/zsh
```
#### Скриншот как выглядит zsh
![image](https://user-images.githubusercontent.com/67426242/127010119-6c03f294-1f13-467f-b4ab-8b2f50d7f2ad.png)
Формат: devicename:[username]:/where/are/you$

## st
Удобный и простой терминал
#### скриншот как выглядит
![image](https://user-images.githubusercontent.com/67426242/127010931-24d81bb6-cf0f-4e4f-899b-85ae3e4aaed4.png)
Цвета: https://nordtheme.com

Для установки заходите в папку st-tnkv, и пишите
```
sudo make clean install
```
Если вы установили мой конфиг zsh то
```
smci
```
##dmenu
#### скриншот как выглядит
![image](https://user-images.githubusercontent.com/67426242/127011296-dc780c7e-b54a-45e7-90ac-17c75f6a6ac5.png)
Программа для запуска других программ, нечего сказать
Для установки заходите в папку dmenu-tnkv, и пишите
```
sudo make clean install
```
Если вы установили мой конфиг zsh то
```
smci
```
##dwm
#### скриншоты как выглядит
##### с polybar*
![image](https://user-images.githubusercontent.com/67426242/127011665-356e876f-a5e5-4a98-a1fd-51f6e8d8889e.png)
Для установки заходите в папку dwm-tnkv, и пишите
```
sudo make clean install
```
Если вы установили мой конфиг zsh то
```
smci
```

Это не все мне просто лень писать дальше, английского не будет мне лень переводить мда
