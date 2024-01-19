@echo off
chcp 65001

:: プロジェクトの構造を定義します
set "project=Assets\Project"
set "folders=%project%\Audio\Common %project%\Audio\SceneA %project%\Audio\SceneB %project%\Design\UI\Common %project%\Design\UI\SceneA %project%\Design\UI\SceneB %project%\Design\Materials\Common %project%\Design\Materials\SceneA %project%\Design\Materials\SceneB %project%\GameData\Prefabs\Data\Common %project%\GameData\Prefabs\Data\SceneA %project%\GameData\Prefabs\Data\SceneB %project%\GameData\Prefabs\Systems\Common %project%\GameData\Prefabs\Systems\SceneA %project%\GameData\Prefabs\Systems\SceneB %project%\GameData\Prefabs\UI\Common %project%\GameData\Prefabs\UI\SceneA %project%\GameData\Prefabs\UI\SceneB %project%\GameData\ScriptableObjects\Common %project%\GameData\ScriptableObjects\SceneA %project%\GameData\ScriptableObjects\SceneB %project%\Program\Scripts\Common %project%\Program\Scripts\SceneA\Core %project%\Program\Scripts\SceneA\InGame %project%\Program\Scripts\SceneA\OutGame %project%\Program\Scripts\SceneA\Interface %project%\Program\Scripts\SceneB\Core %project%\Program\Scripts\SceneB\InGame %project%\Program\Scripts\SceneB\OutGame %project%\Program\Scripts\SceneB\Interface %project%\Program\Shaders\Common %project%\Program\Shaders\SceneA %project%\Program\Shaders\SceneB %project%\Scenes\DebugScene %project%\Scenes\MainScene"

:: 共通フォルダの定義
set "commonFolders=Assets\Editor Assets\Gizmos Assets\Resources Assets\StreamingAssets Assets\AssetStoreTools"

:: プロジェクト関連のサブフォルダを作成します
for %%f in (%folders%) do (
    mkdir "%%f"
)

:: 共通フォルダを作成します
for %%f in (%commonFolders%) do (
    mkdir "%%f"
)

echo ファイル構造の作成が完了しました！
pause
