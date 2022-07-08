﻿namespace AppUi.Services
{
    public interface IDialogService
    {
        bool ShowDialog();

        void ShowInfo(string info);

        void ShowError(string error);
    }
}