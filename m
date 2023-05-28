Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 508B37E
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 11:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F41FFC433EF
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 11:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685272146;
	bh=48UEkBEzZGuuGJBEIZh/JKYIrJ8M9v+NOo8HXOfVSYs=;
	h=To:Subject:From:Date:From;
	b=RNMSYlW/caNdHHvQDByoLGDbA2//0YwFzasZA4p1sdX68DnfP+hBaiie6LZIle1bD
	 oOY4tkrnXY8aVHcgw8+uofVewpgwEqAcMXYTyEAVVI08ZXbIVqyAhyEPUYe3K9+KxD
	 YJE44IzBt5X/9f/rIM7aWTp4y9uktSBsmCzf9PJSd8TNcPX7iBYWh7hbuW0Q25b6q6
	 UW3vJj4/+Nlw9ltRt4+0EqfyM9uzqd9+0bFvfMdpy0BN1az9RqZCjCtDj/2pmVV9RQ
	 jVbB3OBntZNEhbCFz3ziVmX+JB7HcOj5gAI+D7ZWm5DZ9/OTjlP1adpvSDYDVQTLwe
	 QVTN45VEbjOSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6C5FC77B7E
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 11:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168527214579.12815.16678240359968593320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a31c389d6a3267fd04e5e190d862f9a8d7e6d1ff79739535d3aabb0918380103
Date: Sun, 28 May 2023 11:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685272145
