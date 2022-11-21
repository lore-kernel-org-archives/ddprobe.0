Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7E496FA6
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 17:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FFAAC433D6
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 17:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669051254;
	bh=tQi9Fh458hMdn5kICzf9qP3U4nm8iDOFfkOTBlOOxrA=;
	h=To:Subject:From:Date:From;
	b=bFnJsyO3ZJX/jWVBBFOl/3L1vDHtaCgY3BkZvqBcKsErB/Cyi7wN+j9j+/qk6iKiJ
	 l8X7p1YL6e7qXdvsbC5SiFih4BTMzvZJuNoOEBj43p40+fWGb0+BG9bAmPSkfghn1S
	 2iFG8R0qP9EcApk3c6khZ/+hF9huZb79N4AgVtiBqT4+O2OTqz4lW+9CY/g3MW4gHQ
	 edYS1i3V7uXYA1Hod1Itr1hrEsuED4hVpqYbfxp8X9p58L1Y1O2KxfWAEfRAmXV4e0
	 uKiwFwk8QJtko+jSnGYD50Lv8Ro3bN5MRqlGBEllVGw0/LM8yQjfwSu35g9PK9BTH4
	 uRKj1Zjp/75Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5433AC433FE
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 17:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166905125433.32054.4433918417690649070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4350876342e3b10f8f862dc39a9de77548d0f090b214f6ba40c9390511a1cd79
Date: Mon, 21 Nov 2022 17:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669051254
