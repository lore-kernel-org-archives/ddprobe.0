Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C509317CF
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 13:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E0E0C433D6
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 13:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669556454;
	bh=1MVWUjZXbqdcKGeKBwXuuiUbBt9Ysqykt20R4/CCrF4=;
	h=To:Subject:From:Date:From;
	b=ZDTkajSSkjENr3uqE+eSLb6BWJRiMboTvAWO25YRdu6GeBmHlvxMjahnVhWJWjnXK
	 9EmhrLPlB18RmPfhGB4eEIaShuahjH+HwPFTC3cww0XQUeLODp0VPkyGgTuNkvI0pG
	 5SVUCd0Sbc2+X+Q0tVRv50e798lb28nA+/PnQ5iSaT2qb/seW1sXnOQRG1dgrRj9dC
	 0Pe1ovm7uxYYoFqUQDJR/N4aWO4z6fCCxhgNlNWh9Kktlb360cQp8vhm/GFnaOIA7I
	 kTd8SoI0Or7Zf9LCTsnVBeY6QpLOoaK+olHWH0yvlNh7IVS4OmtzNx5U+ch6aeLiIW
	 7W3AuwkdoPnyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 526ECC4332F
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 13:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166955645432.13271.8741483857163387713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 146c5786e71a9906849741c5458b291b18b0355fc25a5bc039a4fdf9d7a502e2
Date: Sun, 27 Nov 2022 13:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669556454
