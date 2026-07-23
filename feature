 <!DOCTYPE html>
<html lang="en" class="scroll-smooth">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Features - HRM System</title>
    
    <!-- লারাভেল এসেট লোডার (অক্ষত) -->
    @vite(['resources/css/app.css', 'resources/js/app.js'])

    <!-- প্রিমিয়াম ৩D মোশন ও আইকন কিট -->
    <script src="https://cdn.jsdelivr.net/npm/@tailwindcss/browser@4"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <style>
        body { 
            font-family: 'Plus Jakarta Sans', sans-serif; 
            background-color: #030611;
            cursor: none; /* কাস্টম কার্সরের জন্য ডিফল্ট কার্সর হাইড */
            overflow-x: hidden;
        }

        /* 🌟 কাস্টম কার্সর নোডস 🌟 */
        .c-dot {
            position: fixed;
            width: 10px;
            height: 10px;
            background: #06B6D4;
            border: 2px solid #fff;
            border-radius: 50%;
            pointer-events: none;
            z-index: 10000;
            transform: translate(-50%, -50%);
            box-shadow: 0 0 15px rgba(6, 182, 212, 0.8);
            transition: width 0.2s, height 0.2s, background-color 0.2s, transform 0.1s;
        }
        .c-ring {
            position: fixed;
            width: 46px;
            height: 46px;
            border: 2px solid rgba(6, 182, 212, 0.7);
            background: rgba(6, 182, 212, 0.03);
            border-radius: 50%;
            pointer-events: none;
            z-index: 9999;
            transform: translate(-50%, -50%);
            transition: width 0.3s, height 0.3s, border-color 0.3s, background-color 0.3s;
        }

        /* হাইপার গ্লাস মরফিজম */
        .hyper-glass {
            background: rgba(255, 255, 255, 0.02);
            backdrop-filter: blur(25px) saturate(180%);
            -webkit-backdrop-filter: blur(25px) saturate(180%);
            border: 1px solid rgba(255, 255, 255, 0.08);
            box-shadow: 0 30px 70px rgba(0, 0, 0, 0.5), inset 0 1px 2px rgba(255, 255, 255, 0.15);
        }

        /* ৩D টিল্ট ফিচার কার্ড */
        .feature-card3d {
            transform-style: preserve-3d;
            perspective: 1000px;
            transition: transform 0.5s cubic-bezier(0.16, 1, 0.3, 1), border-color 0.4s ease, box-shadow 0.4s ease;
        }
        .feature-card3d:hover {
            border-color: rgba(6, 182, 212, 0.5);
            box-shadow: 0 30px 60px rgba(0, 0, 0, 0.6), 0 0 40px rgba(6, 182, 212, 0.2);
        }

        /* এনিমেটেড টেক্সট গ্রেডিয়েন্ট */
        .animated-text-grad {
            background: linear-gradient(90deg, #06B6D4, #0EA5E9, #6366F1, #06B6D4);
            background-size: 200% auto;
            -webkit-background-clip: text;
            background-clip: text;
            -webkit-text-fill-color: transparent;
            animation: textFlow 4s linear infinite;
            display: inline-block;
        }
        @keyframes textFlow {
            0% { background-position: 0% center; }
            100% { background-position: 200% center; }
        }

        .floating-node {
            animation: floatMotion 4s ease-in-out infinite alternate;
        }
        @keyframes floatMotion {
            0% { transform: translateY(0px) rotate(0deg); }
            100% { transform: translateY(-8px) rotate(3deg); }
        }
    </style>
</head>
<body class="text-slate-300 antialiased leading-8 bg-[#030611]">

    <!-- কাস্টম কার্সর নোডস -->
    <div class="c-dot" id="custom-dot"></div>
    <div class="c-ring" id="custom-ring"></div>

    <!-- গ্লোয়িং ব্যাকগ্রাউন্ড অর্বস (৩D ভাইব দেওয়ার জন্য) -->
    <div class="fixed top-[-10%] left-[-10%] w-[50vw] h-[50vw] rounded-full bg-cyan-500/5 blur-[120px] pointer-events-none z-0"></div>
    <div class="fixed bottom-[-10%] right-[-10%] w-[50vw] h-[50vw] rounded-full bg-indigo-500/5 blur-[120px] pointer-events-none z-0"></div>

    <div class="max-w-5xl mx-auto px-4 py-16 relative z-10">
        <!-- ব্যাক টু হোম বাটন উইথ অ্যারো মোশন -->
        <a href="/" class="inline-flex items-center text-sm font-semibold text-cyan-400 hover:text-cyan-300 transition-colors duration-300 group mb-10">
            <span class="transform group-hover:-translate-x-1.5 transition-transform duration-300 mr-2">&larr;</span> Back to Home
        </a>
        
        <div class="mb-16 text-center">
            <span class="text-xs font-bold text-cyan-400 uppercase tracking-widest">System Overview</span>
            <h1 class="text-4xl sm:text-5xl font-extrabold text-white tracking-tight mt-2 mb-4">
                Explore Full <span class="animated-text-grad">Features</span>
            </h1>
            <p class="text-slate-500 text-sm max-w-md mx-auto">Discover the high-performance architectural modules powering your workplace management.</p>
        </div>
        
        <!-- ৩D কার্ড গ্রিড লেআউট -->
        <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
            
            <!-- Feature 1: Employee Management -->
            <div class="p-8 rounded-2xl hyper-glass feature-card3d group cursor-pointer border border-white/5" data-spotlight data-tilt>
                <div class="w-12 h-12 bg-cyan-500/10 text-cyan-400 flex items-center justify-center rounded-xl mb-6 text-xl border border-white/10 shadow-sm floating-node">👥</div>
                <h3 class="text-xl font-bold mb-3 text-white transition-colors duration-300 group-hover:text-cyan-400">Employee Management</h3>
                <p class="text-slate-400 text-sm leading-relaxed">Comprehensive profiles, department & designation organization, and secure data handling.</p>
            </div>

            <!-- Feature 2: Attendance System -->
            <div class="p-8 rounded-2xl hyper-glass feature-card3d group cursor-pointer border border-white/5" data-spotlight data-tilt>
                <div class="w-12 h-12 bg-blue-500/10 text-blue-400 flex items-center justify-center rounded-xl mb-6 text-xl border border-white/10 shadow-sm floating-node" style="animation-delay: 0.5s;">⏱️</div>
                <h3 class="text-xl font-bold mb-3 text-white transition-colors duration-300 group-hover:text-blue-400">Attendance System</h3>
                <p class="text-slate-400 text-sm leading-relaxed">Easy check-in/out for employees with geolocation and monthly calendar logs.</p>
            </div>

            <!-- Feature 3: Leave Management -->
            <div class="p-8 rounded-2xl hyper-glass feature-card3d group cursor-pointer border border-white/5" data-spotlight data-tilt>
                <div class="w-12 h-12 bg-indigo-500/10 text-indigo-400 flex items-center justify-center rounded-xl mb-6 text-xl border border-white/10 shadow-sm floating-node" style="animation-delay: 1s;">📄</div>
                <h3 class="text-xl font-bold mb-3 text-white transition-colors duration-300 group-hover:text-indigo-400">Leave Management</h3>
                <p class="text-slate-400 text-sm leading-relaxed">Online application, real-time balance tracking, and one-click admin approval.</p>
            </div>

            <!-- Feature 4: Payroll & Tasks -->
            <div class="p-8 rounded-2xl hyper-glass feature-card3d group cursor-pointer border border-white/5" data-spotlight data-tilt>
                <div class="w-12 h-12 bg-teal-500/10 text-teal-400 flex items-center justify-center rounded-xl mb-6 text-xl border border-white/10 shadow-sm floating-node" style="animation-delay: 1.5s;">💳</div>
                <h3 class="text-xl font-bold mb-3 text-white transition-colors duration-300 group-hover:text-teal-400">Payroll & Tasks</h3>
                <p class="text-slate-400 text-sm leading-relaxed">Automated salary sheet calculations, payslip downloads, and efficient task assignment.</p>
            </div>

        </div>
    </div>

    <!-- স্ক্রিপ্ট লাইব্রেরি সমূহ -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.2/gsap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/vanilla-tilt/1.8.1/vanilla-tilt.min.js"></script>
    
    <script>
        // কার্সর ট্র্যাকিং মেকানিজম
        const dot = document.getElementById('custom-dot');
        const ring = document.getElementById('custom-ring');
        let mouseX = 0, mouseY = 0, ringX = 0, ringY = 0;

        window.addEventListener('mousemove', (e) => {
            mouseX = e.clientX;
            mouseY = e.clientY;
            dot.style.left = mouseX + 'px';
            dot.style.top = mouseY + 'px';
        });

        function animateCursorRing() {
            ringX += (mouseX - ringX) * 0.15;
            ringY += (mouseY - ringY) * 0.15;
            ring.style.left = ringX + 'px';
            ring.style.top = ringY + 'px';
            requestAnimationFrame(animateCursorRing);
        }
        animateCursorRing();

        // ইন্টারঅ্যাকটিভ এলিমেন্ট হোভার ইফেক্টস
        document.querySelectorAll('a, [data-spotlight]').forEach(el => {
            el.addEventListener('mouseenter', () => {
                dot.style.transform = 'translate(-50%, -50%) scale(2)';
                dot.style.backgroundColor = '#fff';
                ring.style.width = '64px'; ring.style.height = '64px';
                ring.style.borderColor = 'rgba(6, 182, 212, 1)';
                ring.style.backgroundColor = 'rgba(6, 182, 212, 0.1)';
            });
            el.addEventListener('mouseleave', () => {
                dot.style.transform = 'translate(-50%, -50%) scale(1)';
                dot.style.backgroundColor = '#06B6D4';
                ring.style.width = '46px'; ring.style.height = '46px';
                ring.style.borderColor = 'rgba(6, 182, 212, 0.7)';
                ring.style.backgroundColor = 'rgba(6, 182, 212, 0.03)';
            });
        });

        // ডাইনামিক লাইটিং স্পটলাইট ও ৩D টিল্ট কাস্টমাইজেশন
        document.querySelectorAll('[data-spotlight]').forEach(card => {
            card.addEventListener('mousemove', (e) => {
                const rect = card.getBoundingClientRect();
                const x = e.clientX - rect.left;
                const y = e.clientY - rect.top;
                
                // মাউসের সাথে গ্লো মুভ করবে
                card.style.background = `radial-gradient(600px circle at ${x}px ${y}px, rgba(6, 182, 212, 0.12), transparent 45%)`;
                
                // ম্যানুয়াল ৩D রোটেশন ক্যালকুলেশন
                const cardWidth = rect.width;
                const cardHeight = rect.height;
                const rotateX = ((y - (cardHeight / 2)) / (cardHeight / 2)) * -8;
                const rotateY = ((x - (cardWidth / 2)) / (cardWidth / 2)) * 8;
                
                card.style.transform = `rotateX(${rotateX}deg) rotateY(${rotateY}deg) scale(1.02)`;
            });

            card.addEventListener('mouseleave', () => {
                card.style.background = 'rgba(255, 255, 255, 0.02)';
                card.style.transform = 'rotateX(0deg) rotateY(0deg) scale(1)';
            });
        });

        // ভ্যানিলা টিল্ট ইনিশিয়ালাইজেশন
        VanillaTilt.init(document.querySelectorAll(".feature-card3d"), {
            max: 8,
            speed: 400,
            glare: true,
            "max-glare": 0.1,
        });
    </script>
</body>
</html>
