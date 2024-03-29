﻿using System;

namespace Domain.Models
{
    public interface IOutFile
    {
        string FileName { get; }

        double Size { get; }

        DateTime DateOfCreation { get; }

        string Extension { get; }

        string Path { get; }

        void doAction();

        void stopAction();

        void doPause();

        void doResume();
    }
}
