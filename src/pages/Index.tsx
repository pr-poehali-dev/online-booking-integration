import { Tabs, TabsContent, TabsList, TabsTrigger } from '@/components/ui/tabs';
import AppointmentForm from '@/components/AppointmentForm';
import ManageAppointment from '@/components/ManageAppointment';
import Icon from '@/components/ui/icon';

export default function Index() {
  return (
    <div className="min-h-screen bg-gradient-to-br from-background via-primary/5 to-accent/5">
      <div className="container mx-auto px-4 py-8 md:py-12">
        <div className="text-center mb-8 md:mb-12 animate-fade-in">
          <h1 className="text-4xl md:text-5xl font-bold text-foreground mb-4">
            Онлайн-запись в клинику
          </h1>
          <p className="text-lg text-muted-foreground max-w-2xl mx-auto">
            Запишитесь на прием к врачу за несколько простых шагов
          </p>
        </div>
        
        <Tabs defaultValue="new" className="max-w-5xl mx-auto">
          <TabsList className="grid w-full grid-cols-2 max-w-md mx-auto mb-8">
            <TabsTrigger value="new" className="flex items-center gap-2">
              <Icon name="Plus" size={16} />
              Новая запись
            </TabsTrigger>
            <TabsTrigger value="manage" className="flex items-center gap-2">
              <Icon name="Settings" size={16} />
              Управление
            </TabsTrigger>
          </TabsList>
          
          <TabsContent value="new">
            <AppointmentForm />
          </TabsContent>
          
          <TabsContent value="manage">
            <ManageAppointment />
          </TabsContent>
        </Tabs>
      </div>
    </div>
  );
}
