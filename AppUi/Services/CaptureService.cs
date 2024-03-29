﻿using Domain.Factories;
using Domain.Factories.Abstract_factory;
using Domain.Models;

namespace AppUi.Services
{
    public sealed class CaptureService : ICaptureService
    {
        private readonly IHelper _helper;
        private IOutFile _output;

        public CaptureService() =>
            _helper = new HelperService();

        public void Start(CaptureType type, string fileName = null, string path = null)
        {
            _output = GetFactory(type, fileName, path).GetOutFile();
            _output.doAction();
        }

        public void HideWindowAndStart(CaptureType type, string fileName = null, string path = null)
        {
            _helper.WindowHide();

            _output = GetFactory(type, fileName, path).GetOutFile();

            _helper.PauseBeforeAction(() => { _output.doAction(); });
            _helper.WindowShow();
        }

        public void Pause()
        {
            _output.doPause();
        }

        public void Resume()
        {
            _output.doResume();
        }

        public void Stop()
        {
            if (_output != null)
                _output.stopAction();
        }

        public IOutFile GetOutFile()
        {
            return _output;
        }

        private OutFileFactory GetFactory(CaptureType outputType, string fileName, string path)
        {
            switch (outputType)
            {
                case CaptureType.Screenshot:
                    return new ScreenshotFactory(fileName, path);

                case CaptureType.Screenvideo:
                    return new ScreenvideoFactory(fileName, path);

                default:
                    return new ScreenshotFactory(fileName, path);
            }
        }
    }

    public enum CaptureType
    {
        Screenshot,
        Screenvideo
    }
}
