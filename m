Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF2657E7
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 01:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88772C433D2
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 01:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673744487;
	bh=RlBLFzihtRydy/91XKLw6JBhlE2+dt05qPRH5mo7LS4=;
	h=To:Subject:From:Date:From;
	b=lPvpViW1s6xaNlY+llGwm7efKzALwS89N4Rxpszm5woQWhA4JoW9veP4Fk28YulE4
	 B8l7nj408GzB5z+2l9m7z1lE72ivwKoN47cuQ9GpM3p/61C9RoWkRDYCd8KPCi8Mza
	 SRKCzYqgRYk0hjP4NDNSna/s8xcmYLfzJyyp2zhmyNqhRFCTwea24n7jRUOe6N4NnL
	 kuY33k5EG1Y0JTdyuGPPCcs1mr4rJcYPKSYLlFh7d1AdefIftOrXa/ydLF/B/ykBxE
	 KpMbEy02ts5ov55X7OgsBty82Y0rZNDERXbhVjRIUUwi1Z2TaQHdB4YOYr4Y5o4ulE
	 +T2aIugPcO61Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67B5DC3DA78
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 01:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167374448739.11919.13045008894075313630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c924f01a0862cd2963c913d1ece6a7c940912aa2efa5b75a0a5b44395f7071b
Date: Sun, 15 Jan 2023 01:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673744487
