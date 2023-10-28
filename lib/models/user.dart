/// Модель User представляє інформацію про користувача в системі.
class User {
  /// Унікальний ідентифікатор користувача.
  /// Електронна пошта користувача.
  /// Використовується для авторизації, а також для спілкування з користувачем.
  final String email;

  /// Хешований пароль користувача.
  /// Для збереження безпеки паролі не мають зберігатися в текстовому форматі. Замість цього ми зберігаємо хеш пароля.
  final String passwordHash;

  /// Роль користувача у системі.
  /// Визначає права та обов'язки користувача.
  final UserRole
      role; // UserRole - це enum, який містить усі можливі ролі (наприклад, UserRole.ADMIN, UserRole.THERAPIST тощо).

  final String lastName;

  final String phone;

  /// Повне ім'я користувача.
  /// Використовується для відображення імені користувача в системі.
  final String name;

  /// Конструктор для створення нового об'єкта User.
  User({
    required this.email,
    required this.passwordHash,
    required this.role,
    required this.phone,
    required this.name,
    required this.lastName,
  });
}

/// Перелік усіх можливих ролей користувача в системі.
enum UserRole {
  SUPER_ADMIN,
  ADMIN,
  NEUROPSYCHOLOGIST,
  PHYSICAL_THERAPIST,
  ERGOTHERAPIST,
  PARTICIPANT,
  guest,
}
