# OpenCode Mobile GitHub

نسخه شخصی‌سازی‌شده برای استفاده از OpenCode Mobile با GitHub Codespaces.

## هدف

این پروژه قرار است موبایل را به یک OpenCode Server داخل GitHub Codespaces متصل کند؛ بنابراین برای شروع به VPS نیاز نیست.

```text
Android
   │ HTTPS
   ▼
OpenCode Mobile
   │
   ▼
GitHub Codespaces
   │
   ▼
OpenCode Server :4096
   │
   ▼
Repository / GitHub
```

## وضعیت فعلی

- پیکربندی Codespaces اضافه شده است.
- پورت 4096 برای OpenCode Server آماده شده است.
- اسکریپت راه‌اندازی OpenCode Server اضافه شده است.
- فرایند Bootstrap برای وارد کردن سورس پروژه اصلی OpenCode Mobile اضافه شده است.

## راه‌اندازی Codespace

1. در GitHub روی `Code` و سپس `Codespaces` بروید.
2. یک Codespace از branch `main` بسازید.
3. بعد از آماده شدن محیط، اجرا کنید:

```bash
./scripts/start-opencode-server.sh
```

4. در تب `Ports` پورت `4096` را پیدا کنید.
5. URL خصوصی Codespace را بردارید.
6. URL را در OpenCode Mobile به عنوان Server URL وارد کنید.

## امنیت

پورت OpenCode به صورت private تعریف شده است. کلیدهای API و رمزها را در Git commit نکنید.

## نکته

GitHub Actions برای کارهای کوتاه مثل تست، build و deploy مناسب است؛ برای session تعاملی OpenCode از Codespaces استفاده می‌شود.
