Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BF415381
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 18:07:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F75C433C8
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 18:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688753228;
	bh=dBBkoDU2qxehO6+hBs2Fi/gLtKpyV1l5bm5Z2CBvy/o=;
	h=To:Subject:From:Date:From;
	b=XRGthLYxRoVIunyHSKciwYg+q9MewWaE9aV2310LoG9gJI9nPCSxtJr7/0d3eGIqY
	 5fWKkT8n8OAxWkmRvBG1g4HYqziuxggxqB1wCimYZPk5/4EQyWTwpZzftWAB9zMtq5
	 PVubyhdEZARvvD+30YEp39xy2EJwoA//ofXWPuUj4GZXKl6HLU5ivIJeCEkxCbmQww
	 ieFrzyxXz9lLBjocO+HfQiaGIAGmywsGp21/wZ9wd+iul30mbLY8acLE/2u997YYK6
	 yPY6d4rpE3IVGLgqnkQT80fIE3QSMQ3Bg+kSjXwI0x+kryXwr3uEPjCFG73AIu+elA
	 nxc7TVg84zATg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDFDEB64DA
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 18:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168875322870.13249.13961925400757263239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf57a0b23e9b83e28b7d8d5555fa72568720c2796aaa411b45ac1dde1778a5e5
Date: Fri, 07 Jul 2023 18:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688753228
