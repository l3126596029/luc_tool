// 创建时间: 04/13/2022 5:56 PM
// 目标项目: lcu_tool
// 创建用户: l3126
/* 留言:

*/

String? getGameLocation() {
  /* 获取游戏路径
  QStringList pathList;

  pathList = GetProcessFullPaths("LeagueClient.exe");
  if (pathList.isEmpty()) {
    QProcess process;
    process.start("wmic process where name='LeagueClient.exe' GET ExecutablePath");
    process.waitForFinished(-1);
    QString result = QString::fromLocal8Bit(process.readAllStandardOutput());
  if (result.left(CMD_EXECUTABLE_PATH.length()) == CMD_EXECUTABLE_PATH) {
  pathList = result.split("\n");
  /* 去除第一行和后两行空白 */
  pathList.removeFirst();
  pathList.removeLast();
  pathList.removeLast();
  }
}
*/
  return "HelloWorld";
}
