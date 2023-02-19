Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A78529AC
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 20:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBED3C433EF
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 20:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676840286;
	bh=MyqH+gABiwxuDU4kEDL2/y0CFr6mY+pn59Qz+aRbeGg=;
	h=To:Subject:From:Date:From;
	b=d2gkeMn14R+oh3UsKe+k6E2+1c8b+E64FTpaZmD6jJHBQP+xxfdYUHOBMJPUFkNIG
	 sgPINC4jtIsT8Ly5G7P4yGxWLJH/Si/joFvs6GABe1x03v0lO8cedTfsPosqCBc8LP
	 vHcVV9/1Tkup/1hM8HhUsNdwyHSBBDhw8c/cN2EeF4O4GCXx1Ca9SMUuMSxL8IJQxo
	 SxH1sXzzJxwdD0RjWRokaVMvkRfsZ5ZVF0dJQEnSgkKizlfmpMW/cCJNzi8kBjuxSI
	 uFxtnCnyBug13ION6WaZkeiLEImflzzFniDqwEh371wvvgZW5/iCvlihS4/ZDe0GC6
	 vRtUf93ew1GSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B71EEC05027
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 20:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167684028574.20118.9797301833819410469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8774c9f91395286f62084ea5700b5fd46342b8a959161e611f4b525ecb963b4
Date: Sun, 19 Feb 2023 20:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676840285
