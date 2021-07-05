final String iconAssetsRoot = "assets/icons/";
final String menuSvg= _getImagePath("menus.svg");
final String playSvg= _getImagePath("playButton.svg");
final String pauseSvg= _getImagePath("pauseButton.svg");
final String nextSvg= _getImagePath("nextSongButton.svg");
final String previousSvg= _getImagePath("previousSongButton.svg");
final String likeSvg= _getImagePath("redlike.svg");
final String aboutSvg= _getImagePath("about.svg");
final String shareSvg= _getImagePath("share.svg");
final String lockSvg= _getImagePath("lockscreen.svg");
final String notificationSvg= _getImagePath("notifications.svg");
final String othersSvg= _getImagePath("others.svg");
final String sleepmodeSvg= _getImagePath("sleepmode.svg");



String _getImagePath(String fileName){
  return iconAssetsRoot + fileName;
}