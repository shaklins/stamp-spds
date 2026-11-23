"""Склейка нескольких PDF в один файл с закладками по документам.

Использование:
    python tools/merge_pdf.py <out.pdf> <part1.pdf> [part2.pdf ...]

Требуется пакет pypdf:  python -m pip install pypdf
"""

from __future__ import annotations

import sys
from pathlib import Path

from pypdf import PdfReader, PdfWriter


def main(argv: list[str]) -> int:
    # Чтобы русские сообщения корректно читались в консоли Windows
    try:
        sys.stdout.reconfigure(encoding="utf-8", errors="replace")
        sys.stderr.reconfigure(encoding="utf-8", errors="replace")
    except AttributeError:
        pass

    if len(argv) < 3:
        print(__doc__, file=sys.stderr)
        return 2

    out_path = Path(argv[1])
    parts = [Path(p) for p in argv[2:]]

    missing = [str(p) for p in parts if not p.is_file()]
    if missing:
        print("Не найдены файлы: " + ", ".join(missing), file=sys.stderr)
        return 1

    writer = PdfWriter()
    for part in parts:
        start = len(writer.pages)
        reader = PdfReader(str(part))
        for page in reader.pages:
            writer.add_page(page)
        writer.add_outline_item(title=part.stem, page_number=start)
        print(f"  + {part.name}: {len(reader.pages)} стр.")

    out_path.parent.mkdir(parents=True, exist_ok=True)
    with out_path.open("wb") as fh:
        writer.write(fh)

    print(f"Итог: {out_path} — {len(writer.pages)} стр.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main(sys.argv))
