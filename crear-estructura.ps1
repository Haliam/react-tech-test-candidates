# Ruta raíz del proyecto
$root = "C:\Users\haliam.perez\Desktop\Inetum\10 TECH LEAD\CandidatesInterviews\TechnicalTest\Front\pua-admin"

# Lista de carpetas a crear
$folders = @(
    "public\map\normal\sprite_images",
    "src\assets\images",
    "src\assets\tasks",
    "src\features\inventory\components",
    "src\features\inventory\config",
    "src\features\inventory\hooks",
    "src\features\inventory\mappers",
    "src\features\inventory\models",
    "src\features\inventory\pages",
    "src\features\inventory\routing",
    "src\features\inventory\services",
    "src\features\taskManager\pages",
    "src\commonComponents",
    "src\shared",
    "src\hooks",
    "src\user\api",
    "src\user\components",
    "src\user\hooks",
    "src\user\mappers",
    "src\user\models",
    "src\user\pages",
    "src\legacy",
    "src\tests",
    "src\utils"
)

# Crear carpetas
foreach ($folder in $folders) {
    $fullPath = Join-Path $root $folder
    New-Item -ItemType Directory -Path $fullPath -Force | Out-Null
}

# Crear archivos vacíos
$files = @(
    "src\features\taskManager\TaskList.tsx",
    "src\features\taskManager\pages\TasksPage.tsx",
    "src\commonComponents\TaskForm.tsx",
    "src\hooks\useTasks.ts",
    "src\shared\constants.ts",
    "src\shared\interfaces.ts",
    "src\legacy\task-logic.ts",
    "src\tests\TaskItem.test.tsx",
    "src\utils\dummyTasks.ts",
    "src\assets\tasks\check-icon.svg"
)

foreach ($file in $files) {
    $fullPath = Join-Path $root $file
    New-Item -ItemType File -Path $fullPath -Force | Out-Null
}

Write-Host "✅ Estructura creada correctamente en: $root"
