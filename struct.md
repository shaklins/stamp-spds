stamp-spds/
├── 01-cover-title.typ       # Обложка и титульный лист
├── 02-general-data.typ      # Общие данные
├── 03-explanatory.typ       # Пояснительная записка
├── 04-cable-journal.typ     # Кабельный журнал
├── 05-specification.typ     # Спецификация оборудования
│
├── config/                  # Настройки штампа и логотип
│   ├── data_stamp.typ       # или project.toml
│   └── logo.jpg
│
├── data/                    # Табличные данные (CSV)
│   ├── cable-journal.csv
│   ├── drawing-list.csv
│   ├── equipment-spec.csv
│   └── reference-docs.csv
│
├── sections/                # Части пояснительной записки (по необходимости)
│   └── .gitkeep             # Пока пусто
│
├── template/                # Шаблоны рамок и таблиц СПДС/ЕСКД
│   ├── template.typ
│   ├── frame.typ
│   ├── place.typ
│   ├── tables-spds.typ
│   └── tables-eskd.typ
│
├── tools/                   # Вспомогательные скрипты
│   └── merge_pdf.py         # Склейка PDF в один файл (pypdf)
│
├── pdf/                     # Генерируемые pdf
├── Makefile                 # Сборка каждого документа отдельно
├── Makefile.merged          # Сборка всех документов в один pdf
├── .gitignore               # Исключает *.pdf
├── LICENSE
├── README.md
└── struct.md
