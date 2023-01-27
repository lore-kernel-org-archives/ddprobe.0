Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C3232565
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 09:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC711C433D2
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 09:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674813185;
	bh=n7UDedLBEC4RPgEVuYfsY/xnl1X3pyi+vsbtRJqq8zk=;
	h=To:Subject:From:Date:From;
	b=uhdrZLE/HjnIzNM+rRQoisS4MRk/9SY1g8Fm+n5PU0ShGjscFVLW5786u0u7lmkYF
	 ZaE+T6zrv7/n9W5Wo1bqJ5swIBCSNDxnejnr5s3Yk3i61OHSN6YtsgtntrgRDc898L
	 X6cw51RtB8X8RYGXFUEOTNqn1KB77RONkwEIEWEc37RxSnToS1FX7sCU4/ZgVIKCLS
	 cukhjsCdZgWhpsd+zktAWDcx3YVQmiuACkYOBObp7GI4mMmpTovtqGJ15UgbIptXPF
	 OnNhmgVHXsA2HFW7E+IZpgLar7PKwQoftrLdTJ4kei/nxo4uVn3qH1SUkFVwLPitX1
	 wAnELtgupR4Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0722C61DB3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 09:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167481318578.15652.6772887927035288555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78c8d9a2e5250ed1d800f39f4af79e440aceaeb682fb6bda864a012876a0b810
Date: Fri, 27 Jan 2023 09:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674813185
