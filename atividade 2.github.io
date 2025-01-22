import React from 'react';
import { Menu, X, Bell, UserCircle, Moon, Sun, Search, Settings, ChevronDown, Home, Users, ShoppingCart, BarChart, FileText } from 'lucide-react';

const ResponsiveLayout = ({ children }) => {
  const [isSidebarOpen, setIsSidebarOpen] = React.useState(false);
  const [isDarkMode, setIsDarkMode] = React.useState(false);
  const [isDropdownOpen, setIsDropdownOpen] = React.useState(false);
  const [isMobileSearch, setIsMobileSearch] = React.useState(false);
  const [notifications, setNotifications] = React.useState([
    { id: 1, text: 'Nova mensagem recebida', time: '5min' },
    { id: 2, text: 'Atualização disponível', time: '1h' }
  ]);

  const menuItems = [
    { icon: <Home className="w-5 h-5" />, label: 'Dashboard', href: '#' },
    { icon: <Users className="w-5 h-5" />, label: 'Usuários', href: '#' },
    { icon: <ShoppingCart className="w-5 h-5" />, label: 'Produtos', href: '#' },
    { icon: <BarChart className="w-5 h-5" />, label: 'Análises', href: '#' },
    { icon: <FileText className="w-5 h-5" />, label: 'Relatórios', href: '#' },
    { icon: <Settings className="w-5 h-5" />, label: 'Configurações', href: '#' }
  ];

  const breadcrumbs = [
    { label: 'Home', href: '#' },
    { label: 'Dashboard', href: '#' }
  ];

  return (
    <div className={`min-h-screen ${isDarkMode ? 'dark bg-gray-900' : 'bg-gray-100'}`}>
      {/* Header */}
      <header className={`${isDarkMode ? 'bg-gray-800 text-white' : 'bg-white'} shadow-sm sticky top-0 z-50`}>
        <div className="flex items-center justify-between px-4 py-3">
          <div className="flex items-center gap-3">
            <button 
              onClick={() => setIsSidebarOpen(!isSidebarOpen)} 
              className={`p-2 ${isDarkMode ? 'hover:bg-gray-700' : 'hover:bg-gray-100'} rounded-lg`}
            >
              <Menu className="h-6 w-6" />
            </button>
            <h1 className="text-xl font-bold">Meu Aplicativo</h1>
          </div>

          {/* Desktop Search */}
          <div className="hidden md:flex flex-1 max-w-xl mx-6">
            <div className="relative w-full">
              <input
                type="text"
                placeholder="Pesquisar..."
                className={`w-full pl-10 pr-4 py-2 rounded-lg ${
                  isDarkMode 
                    ? 'bg-gray-700 focus:bg-gray-600' 
                    : 'bg-gray-100 focus:bg-white'
                } focus:outline-none focus:ring-2 focus:ring-blue-500`}
              />
              <Search className="absolute left-3 top-2.5 h-5 w-5 text-gray-400" />
            </div>
          </div>
          
          <div className="flex items-center gap-4">
            {/* Mobile Search Toggle */}
            <button 
              onClick={() => setIsMobileSearch(!isMobileSearch)}
              className="md:hidden p-2 hover:bg-gray-100 rounded-full"
            >
              <Search className="h-6 w-6" />
            </button>

            {/* Theme Toggle */}
            <button 
              onClick={() => setIsDarkMode(!isDarkMode)}
              className={`p-2 ${isDarkMode ? 'hover:bg-gray-700' : 'hover:bg-gray-100'} rounded-full`}
            >
              {isDarkMode ? <Sun className="h-6 w-6" /> : <Moon className="h-6 w-6" />}
            </button>

            {/* Notifications */}
            <div className="relative">
              <button 
                onClick={() => setIsDropdownOpen(!isDropdownOpen)}
                className={`p-2 ${isDarkMode ? 'hover:bg-gray-700' : 'hover:bg-gray-100'} rounded-full`}
              >
                <Bell className="h-6 w-6" />
                <span className="absolute top-0 right-0 h-4 w-4 bg-red-500 rounded-full text-xs text-white flex items-center justify-center">
                  {notifications.length}
                </span>
              </button>

              {/* Notifications Dropdown */}
              {isDropdownOpen && (
                <div className={`absolute right-0 mt-2 w-80 rounded-lg shadow-lg ${
                  isDarkMode ? 'bg-gray-800' : 'bg-white'
                } ring-1 ring-black ring-opacity-5`}>
                  <div className="p-4">
                    <h3 className="text-lg font-semibold mb-3">Notificações</h3>
                    <div className="space-y-3">
                      {notifications.map(notification => (
                        <div 
                          key={notification.id}
                          className={`p-3 rounded-lg ${
                            isDarkMode ? 'hover:bg-gray-700' : 'hover:bg-gray-50'
                          }`}
                        >
                          <p className="text-sm">{notification.text}</p>
                          <span className="text-xs text-gray-500">{notification.time}</span>
                        </div>
                      ))}
                    </div>
                  </div>
                </div>
              )}
            </div>

            {/* User Profile */}
            <div className="relative">
              <button className={`flex items-center gap-2 p-2 ${
                isDarkMode ? 'hover:bg-gray-700' : 'hover:bg-gray-100'
              } rounded-lg`}>
                <UserCircle className="h-6 w-6" />
                <span className="hidden md:inline">João Silva</span>
                <ChevronDown className="h-4 w-4" />
              </button>
            </div>
          </div>
        </div>

        {/* Mobile Search Bar */}
        {isMobileSearch && (
          <div className="p-4 md:hidden">
            <input
              type="text"
              placeholder="Pesquisar..."
              className={`w-full px-4 py-2 rounded-lg ${
                isDarkMode 
                  ? 'bg-gray-700 focus:bg-gray-600' 
                  : 'bg-gray-100 focus:bg-white'
              } focus:outline-none focus:ring-2 focus:ring-blue-500`}
            />
          </div>
        )}

        {/* Breadcrumbs */}
        <div className="px-4 py-2 text-sm">
          {breadcrumbs.map((item, index) => (
            <span key={item.label}>
              <a 
                href={item.href}
                className={`hover:underline ${
                  isDarkMode ? 'text-gray-300 hover:text-white' : 'text-gray-600 hover:text-gray-900'
                }`}
              >
                {item.label}
              </a>
              {index < breadcrumbs.length - 1 && (
                <span className="mx-2 text-gray-500">/</span>
              )}
            </span>
          ))}
        </div>
      </header>

      {/* Sidebar + Main content */}
      <div className="flex">
        {/* Sidebar */}
        <aside className={`
          fixed lg:static inset-y-0 left-0 z-50
          w-64 transform transition-transform duration-300
          ${isDarkMode ? 'bg-gray-800 text-white' : 'bg-white'}
          ${isSidebarOpen ? 'translate-x-0' : '-translate-x-full lg:translate-x-0'}
          shadow-lg
        `}>
          <div className="flex justify-between items-center p-4 lg:hidden">
            <h2 className="font-bold">Menu</h2>
            <button 
              onClick={() => setIsSidebarOpen(false)}
              className={`p-2 ${isDarkMode ? 'hover:bg-gray-700' : 'hover:bg-gray-100'} rounded-lg`}
            >
              <X className="h-6 w-6" />
            </button>
          </div>
          
          <nav className="p-4">
            <ul className="space-y-2">
              {menuItems.map((item) => (
                <li key={item.label}>
                  <a
                    href={item.href}
                    className={`flex items-center gap-3 px-4 py-2 rounded-lg ${
                      isDarkMode 
                        ? 'text-gray-300 hover:bg-gray-700 hover:text-white' 
                        : 'text-gray-700 hover:bg-gray-100'
                    }`}
                  >
                    {item.icon}
                    {item.label}
                  </a>
                </li>
              ))}
            </ul>
          </nav>

          {/* Sidebar Footer */}
          <div className={`absolute bottom-0 w-full p-4 border-t ${
            isDarkMode ? 'border-gray-700' : 'border-gray-200'
          }`}>
            <div className="flex items-center gap-3">
              <div className="w-10 h-10 rounded-full bg-blue-500 flex items-center justify-center text-white font-bold">
                JS
              </div>
              <div className="flex-1">
                <h4 className="font-medium">João Silva</h4>
                <p className={`text-sm ${isDarkMode ? 'text-gray-400' : 'text-gray-500'}`}>
                  Administrador
                </p>
              </div>
            </div>
          </div>
        </aside>

        {/* Main content */}
        <main className="flex-1">
          {/* Overlay for mobile sidebar */}
          {isSidebarOpen && (
            <div
              className="fixed inset-0 bg-black bg-opacity-50 lg:hidden"
              onClick={() => setIsSidebarOpen(false)}
            />
          )}
          
          {/* Content area */}
          <div className="max-w-7xl mx-auto p-6">
            <div className={`rounded-lg ${
              isDarkMode ? 'bg-gray-800 text-white' : 'bg-white'
            } shadow-sm p-6`}>
              {children}
            </div>
          </div>
        </main>
      </div>
    </div>
  );
};

export default ResponsiveLayout;
