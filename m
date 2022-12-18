Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFE192F43
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 23:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AB03C433EF
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 23:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671407487;
	bh=lGQdcet8WMe34f/OZZrJZBb9Ill5hVPZ1ISQvMHfiBQ=;
	h=To:Subject:From:Date:From;
	b=SdUk87L7+ja3m3gdU11jf746/TouRCrZo49w4esVH1hL2w9fRATmiD9M5dbKwM/wj
	 ncNEafxXV1VvlGApVbsRbuNQQO2xTxYG4mbrardlxiRbofKrO/7g+XoQxsCBp/vtDj
	 owiw/LxNV7dqOQbW+wAZ/SZk+wZrZXKWjWTomEdTWjfrryarnpYB/4zV9tEiXZNYTX
	 lw+GNBtNaZKsHXMxM3Xqd8L6iq18+xdH6YcGaI6x0Jpc9OxvaeP8/F2+g5EsBxPeSH
	 LZWleGKY0AAxuuia3wsTRE5opflE6o7tqZ6ccS0CyQBFpBVU2wxfc5gqXZmVt6kOnQ
	 Nmn3eFDCOwv6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60461C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 23:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167140748738.3876.1947990101085603400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 013f6a8e37b2d552eb0055e309b6d487fd3a94da8bb4b68e9f3cec994c62612b
Date: Sun, 18 Dec 2022 23:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671407487
