Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 475E87C
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 09:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9BA3C433EF
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 09:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677317705;
	bh=ymCoQm2J3zvp1U90M5Tawo1fmlhes0Kka3YuVusBUDA=;
	h=To:Subject:From:Date:From;
	b=DzJH4818SRW1Gm0Zh1ZConvA8E917P3CQXG0mNpVACuywp+a11BKYMhvCthKs/Jwu
	 7sQ2uqOQB88ePok7blOZ5Ag5yQhbEW2nArzAQm2YmqhMqQImu0pSMoQQRlKfC/VlzJ
	 upcvCUXDOqJQmwK4ELLy8AEHhfg2amYTBp6fKDdUPrOlgHrI8n4c2Bi71uilXnfnOl
	 HoV2nTtnljWunJMFAOd4zIbEZ4K6FNCsLYVyChQqqgLA6PE926K3SmXhiGqgs2bkhp
	 r/vrK5BBAtLqNQtAD8q8yz2kNM3uW/iFpR2el8E7py/yvw7Ggj29FbJJuZB+mKdyNA
	 aHtcMo+4eZxcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9693C7EE2D
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 09:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167731770573.12565.14487925775146885183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 455ed631ffe9a0865a1b9a1726529ce8096c66567745a35ba40da011f69dc522
Date: Sat, 25 Feb 2023 09:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677317705
