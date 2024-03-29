﻿using System;
using System.Collections.Generic;

namespace AppUi.Window.DI
{
    public sealed class Container : IDiContainer
    {
        private readonly IDictionary<string, object> _keyValuePairs = new Dictionary<string, object>();
        private readonly IDictionary<Type, Type> _keyValuePairsTypes = new Dictionary<Type, Type>();

        public TDependence Navigate<TDependence>(string navigationKey) where TDependence : class
        {
            var obj = _keyValuePairs[navigationKey];
            var dependence = (TDependence)Activator.CreateInstance(obj.GetType());

            return dependence;
        }

        public TDependence Navigate<TDependence>(string navigationKey, object arg = null) where TDependence : class
        {
            var obj = _keyValuePairs[navigationKey];
            var dependence = (TDependence)Activator.CreateInstance(obj.GetType(), arg);

            return dependence;
        }

        public void Register<TInterface, TDependence>(TDependence dependence, string navigationKey)
            where TInterface : class
            where TDependence : class
        {
            _keyValuePairs[navigationKey] = dependence;
            _keyValuePairsTypes[typeof(TDependence)] = typeof(TInterface);
        }
    }
}
