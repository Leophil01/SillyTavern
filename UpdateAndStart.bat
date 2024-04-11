::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQK208/SutTi
::eg0/rx1wNQPfEVWB+kM9LVsJDDGSOGquA5QS7Nvv7viTwg==
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCuDJHSdx1I1KxJVQCKNMG+/FIkv4eT39t6GtEgPWt66pG9eHV8I2zSVHJWqcI4otg==
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
pushd %~dp0
git --version > nul 2>&1
if %errorlevel% neq 0 (
    echo Git is not installed on this system. Skipping update.
    echo If you installed with a zip file, you will need to download the new zip and install it manually.
) else (
    call git pull --rebase --autostash
    if %errorlevel% neq 0 (
        REM incase there is still something wrong
        echo There were errors while updating. Please download the latest version manually.
    )
)
set NODE_ENV=production
call npm install --no-audit --no-fund --quiet --omit=dev
node server.js %*
pause
popd
