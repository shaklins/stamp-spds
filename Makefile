# Сборка каждого документа отдельно: pdf/<имя>.pdf
#
# Объединённый PDF (pdf/stamp-spds.pdf) здесь НЕ собирается — для него
# отдельный мейкфайл: Makefile.merged.
#
# Запуск (Windows):      mingw32-make
# Запуск (Linux/macOS):  make
# Очистка:               mingw32-make clean
#
# Внимание: цель clean удаляет папку pdf/ целиком.

TYPST  ?= typst
ROOT   ?= .
OUT    ?= pdf

SOURCES := 01-cover-title.typ 02-general-data.typ 03-explanatory.typ \
           04-cable-journal.typ 05-specification.typ

TARGETS := $(patsubst %.typ,$(OUT)/%.pdf,$(SOURCES))

# Общие зависимости: изменение любого файла оформления/данных пересобирает всё
DEPS := $(wildcard template/*.typ config/*.typ config/*.jpg) \
        $(wildcard sections/*.typ) $(wildcard data/*.csv)

.PHONY: all clean

all: $(TARGETS)
	@echo "Готово: $(TARGETS)"

$(OUT)/%.pdf: %.typ $(DEPS) | $(OUT)
	$(TYPST) compile --root $(ROOT) "$<" "$@"

$(OUT):
	@if not exist "$(OUT)" mkdir "$(OUT)"

clean:
	@if exist "$(OUT)" rmdir /s /q "$(OUT)"
