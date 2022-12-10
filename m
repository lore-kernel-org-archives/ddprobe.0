Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E595F2CA6
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 22:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89412C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 22:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670710887;
	bh=pqRwyNL9FCgvsCKKf3cQwvEBhoGeJYsq7ciFYzdn76Y=;
	h=To:Subject:From:Date:From;
	b=XwxuKq4UNZbMWILUuOC86JMb+RtfVynXwnNRUEgELpQ4Er/yMobvnLVsTR0fXeu9f
	 KJwpQ6lyMm5QR05VI+lgXrNxE8MgjrAOwxIFudkEztpVJPSYF8sbVFDPSVSrbhuGAN
	 tsH050UEtegSwPc44USatZQXsKzIU38JEbRTZkv/FaJdWPYKnDSOngeJ8ObZmvWAyb
	 bN//9fQrUi4OLNF8VujSd+f/hbWi/W8rrlpeGVjKqH1mrzxJf4wWeuSiTjMI5IpKeI
	 kqvAbxml7Bi3RKWrpwmhw73dBJpp20ZZjXb8FE9Qeh1B/P3ImnUfCQ4oE56bRGAQGc
	 URUDR+vywzRuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C516C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 22:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167071088742.14421.11915604443908330908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 844c04de50820fcce2bd1430bd291e33220f18e7c20e97776613618bb5602616
Date: Sat, 10 Dec 2022 22:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670710887
