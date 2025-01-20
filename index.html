import React, { useState, useEffect } from 'react';
import { Card } from '@/components/ui/card';
import { Button } from '@/components/ui/button';
import { Moon, Sun, Heart, Sparkles, Crown, Palette, Scissors, GemIcon, Star, CheckCircle, ChevronRight } from 'lucide-react';

const BeautyApp = () => {
  const [isDark, setIsDark] = useState(false);
  const [selectedTopic, setSelectedTopic] = useState(null);
  const [showProgress, setShowProgress] = useState(false);
  const [progress, setProgress] = useState({});
  const [activeLesson, setActiveLesson] = useState(null);

  const beautyTopics = [
    {
      icon: <Palette className="w-6 h-6" />, 
      title: "Maquiagem", 
      desc: "Tutoriais e técnicas profissionais",
      lessons: [
        "Base perfeita",
        "Olhos marcantes",
        "Contorno facial"
      ]
    },
    {
      icon: <Crown className="w-6 h-6" />, 
      title: "Skincare", 
      desc: "Rotina de cuidados com a pele",
      lessons: [
        "Limpeza facial",
        "Hidratação profunda",
        "Anti-aging"
      ]
    },
    {
      icon: <Scissors className="w-6 h-6" />, 
      title: "Cabelos", 
      desc: "Tratamentos e penteados",
      lessons: [
        "Hidratação capilar",
        "Cortes modernos",
        "Coloração"
      ]
    },
  ];

  // Inicializa o progresso
  useEffect(() => {
    const initialProgress = {};
    beautyTopics.forEach(topic => {
      initialProgress[topic.title] = {
        completed: false,
        lessons: topic.lessons.reduce((acc, lesson) => ({
          ...acc,
          [lesson]: false
        }), {})
      };
    });
    setProgress(initialProgress);
  }, []);

  // Marca uma lição como concluída
  const completeLesson = (topicTitle, lessonTitle) => {
    setProgress(prev => {
      const newProgress = {
        ...prev,
        [topicTitle]: {
          ...prev[topicTitle],
          lessons: {
            ...prev[topicTitle].lessons,
            [lessonTitle]: true
          }
        }
      };
      
      const allLessonsCompleted = Object.values(newProgress[topicTitle].lessons)
        .every(status => status);
      
      newProgress[topicTitle].completed = allLessonsCompleted;
      
      return newProgress;
    });
  };

  const TopicCard = ({ topic, isSelected, onSelect }) => (
    <Card 
      className={`p-6 ${isDark ? 'bg-pink-950' : 'bg-pink-50'} 
        hover:scale-105 transition-all cursor-pointer
        ${isSelected ? (isDark ? 'ring-2 ring-pink-400' : 'ring-2 ring-pink-500') : ''}
        `}
      onClick={() => onSelect(topic)}
    >
      <div className="space-y-4">
        <div className={`${isDark ? 'text-pink-400' : 'text-pink-600'} flex justify-between`}>
          {topic.icon}
          {progress[topic.title]?.completed && 
            <Star className="w-6 h-6 text-yellow-500" />
          }
        </div>
        <h3 className="text-xl font-semibold">{topic.title}</h3>
        <p className={`${isDark ? 'text-pink-200' : 'text-pink-700'}`}>{topic.desc}</p>
        <div className="flex justify-between items-center">
          <span className="text-sm">
            {Object.values(progress[topic.title]?.lessons || {}).filter(Boolean).length}/{topic.lessons.length} concluídas
          </span>
          <ChevronRight className={`w-5 h-5 transform transition-transform ${isSelected ? 'rotate-90' : ''}`} />
        </div>
      </div>
    </Card>
  );

  const LessonList = ({ topic }) => (
    <Card className={`p-6 mt-4 ${isDark ? 'bg-pink-950/50' : 'bg-pink-50/50'}`}>
      <h4 className="font-semibold mb-4">Dicas de {topic.title}</h4>
      <div className="space-y-3">
        {topic.lessons.map((lesson, idx) => (
          <div 
            key={idx}
            className={`p-3 rounded-lg ${isDark ? 'bg-pink-900' : 'bg-white'}
              ${activeLesson === lesson ? (isDark ? 'ring-2 ring-pink-400' : 'ring-2 ring-pink-500') : ''}
              cursor-pointer hover:scale-[1.02] transition-transform`}
            onClick={() => setActiveLesson(lesson)}
          >
            <div className="flex justify-between items-center">
              <span>{lesson}</span>
              {progress[topic.title]?.lessons[lesson] ? (
                <Button 
                  variant="ghost"
                  size="sm"
                  className="text-pink-500"
                >
                  <Heart className="w-4 h-4 mr-1 fill-current" />
                  Concluído
                </Button>
              ) : (
                <Button 
                  variant="outline"
                  size="sm"
                  onClick={(e) => {
                    e.stopPropagation();
                    completeLesson(topic.title, lesson);
                  }}
                >
                  Marcar como concluído
                </Button>
              )}
            </div>
          </div>
        ))}
      </div>
    </Card>
  );

  return (
    <div className={`min-h-screen transition-colors duration-300 ${isDark ? 'bg-pink-950' : 'bg-pink-50'}`}>
      {/* Header */}
      <header className="sticky top-0 backdrop-blur-md bg-opacity-80 shadow-lg z-10">
        <div className={`bg-gradient-to-r ${isDark ? 'from-pink-900 to-purple-900' : 'from-pink-400 to-purple-400'} p-4`}>
          <div className="max-w-7xl mx-auto flex justify-between items-center">
            <div className="flex items-center gap-2">
              <GemIcon className="w-6 h-6 animate-pulse" />
              <h1 className="text-xl font-bold bg-clip-text text-transparent bg-gradient-to-r from-white to-gray-300">
                Beauty Care
              </h1>
            </div>
            <div className="flex gap-4">
              <Button
                variant="outline"
                size="sm"
                onClick={() => setShowProgress(!showProgress)}
                className="rounded-full"
              >
                {showProgress ? 'Esconder Progresso' : 'Ver Progresso'}
              </Button>
              <Button
                variant="ghost"
                size="icon"
                onClick={() => setIsDark(!isDark)}
                className="rounded-full hover:scale-110 transition-transform"
              >
                {isDark ? <Sun className="w-5 h-5" /> : <Moon className="w-5 h-5" />}
              </Button>
            </div>
          </div>
        </div>
      </header>

      {/* Progress Overview */}
      {showProgress && (
        <div className="max-w-7xl mx-auto p-6">
          <Card className={`p-6 ${isDark ? 'bg-pink-900' : 'bg-white'} mb-6`}>
            <h3 className="text-lg font-semibold mb-4">Seu Progresso</h3>
            <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
              {beautyTopics.map((topic, idx) => {
                const completedLessons = Object.values(progress[topic.title]?.lessons || {}).filter(Boolean).length;
                const totalLessons = topic.lessons.length;
                const percentComplete = (completedLessons / totalLessons) * 100;
                
                return (
                  <div key={idx} className={`p-4 rounded-lg ${isDark ? 'bg-pink-950' : 'bg-pink-50'}`}>
                    <div className="flex items-center gap-2 mb-2">
                      {topic.icon}
                      <span className="font-semibold">{topic.title}</span>
                    </div>
                    <div className="w-full bg-gray-600 rounded-full h-2.5">
                      <div
                        className="bg-pink-500 h-2.5 rounded-full transition-all duration-500"
                        style={{ width: `${percentComplete}%` }}
                      ></div>
                    </div>
                    <span className="text-sm mt-2 block">
                      {completedLessons}/{totalLessons} dicas aprendidas
                    </span>
                  </div>
                );
              })}
            </div>
          </Card>
        </div>
      )}

      {/* Main Content */}
      <main className="p-6 max-w-7xl mx-auto">
        {/* Mobile Layout */}
        <div className="block md:hidden animate-fadeIn space-y-6">
          <div className="space-y-4">
            {beautyTopics.map((topic, idx) => (
              <div key={idx}>
                <TopicCard
                  topic={topic}
                  isSelected={selectedTopic?.title === topic.title}
                  onSelect={setSelectedTopic}
                />
                {selectedTopic?.title === topic.title && (
                  <LessonList topic={topic} />
                )}
              </div>
            ))}
          </div>
        </div>

        {/* Desktop Layout */}
        <div className="hidden md:block animate-fadeIn">
          <Card className={`p-12 ${isDark ? 'bg-pink-900' : 'bg-white'} shadow-xl`}>
            <div className="space-y-8">
              <div className="text-center space-y-4">
                <Sparkles className={`w-16 h-16 mx-auto ${isDark ? 'text-pink-400' : 'text-pink-600'} animate-pulse`} />
                <h2 className={`text-3xl font-bold ${isDark ? 'text-pink-100' : 'text-pink-800'}`}>
                  Realce Sua Beleza Natural
                </h2>
                <p className={`text-xl ${isDark ? 'text-pink-200' : 'text-pink-600'} max-w-2xl mx-auto`}>
                  Descubra dicas e truques profissionais de beleza
                </p>
              </div>
              
              <div className="grid grid-cols-3 gap-6 mt-8">
                {beautyTopics.map((topic, idx) => (
                  <div key={idx}>
                    <TopicCard
                      topic={topic}
                      isSelected={selectedTopic?.title === topic.title}
                      onSelect={setSelectedTopic}
                    />
                    {selectedTopic?.title === topic.title && (
                      <LessonList topic={topic} />
                    )}
                  </div>
                ))}
              </div>
            </div>
          </Card>
        </div>
      </main>
    </div>
  );
};

export default BeautyApp;
