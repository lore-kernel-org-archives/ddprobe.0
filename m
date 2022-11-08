Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB68F8BF8
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 23:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86F6FC433D6
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 23:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667951454;
	bh=MWDmBvFxoav1hldQ07072Oi+8sm2mRahiBCfnQ6hEZM=;
	h=To:Subject:From:Date:From;
	b=DuPe0O7fBnkCN3PArWil17Bd9gw/8dBPV3OZ2jLu5MQLeSVMY3Y+LPAKx3SHlw3or
	 ZHihopTAvQEJS6JsxOJXvvdBbAp0+xIuUKbxHhNToHz8yc3egYH882DXGIJVD74t1y
	 NbeR5oppdh+USvBIjA7o2rkjvEiVkIS6qCZ11JGsrakW+F5VPWomvnQLqNELY2pklG
	 0KBMSxZRsPluPiTQ4W5ld2QGuOjPbGDf2WeksoWUBPLpIzvaNY9RNGXfQ+KpnehKdY
	 eUwb3FFRo3aQmprvQQJnk8HwKlVzgaXWO55MZVmq/FzinJnZ/XkgiF1aA7qgC3q4vF
	 +dmH00a0ytcHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D95BC4332F
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 23:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166795145442.1326.11815853147351531388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b919151d059786e3eaa52abba7e102b1422b3e15b1620195e408180243654d0
Date: Tue, 08 Nov 2022 23:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667951454
