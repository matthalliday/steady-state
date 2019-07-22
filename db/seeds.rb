# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

seed_file = Rails.root.join('lib', 'seeds', 'sessions.yml')
config = YAML::load_file(seed_file)

Plan.create(
  name: 'Pete Plan Beginner',
  body: 'The 24 week training plan set out here is aimed at the beginner to intermediate indoor rower. The training plan is set out in a simple to follow format, with each week containing 3 core sessions, and for the keen trainer, 2 additional optional sessions. See the next section where this training plan is reproduced along with explanations for how to complete each session, and the key aims behind them.',
)

config.each do |week|
  week_record = Week.create(
    name: week['name'],
    plan_id: 1,
  )

  week['sessions'].each do |session|
    Session.create(
      name: session['name'],
      body: session['body'],
      optional: session['optional'] || false,
      week: week_record,
    )
  end
end
