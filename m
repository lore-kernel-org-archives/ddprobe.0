Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE8DE10E6
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 06:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69C75C433C1
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665987053;
	bh=vbIbo//ds7won8aVR389cwAG92b4TckFaH4pEeuvpMU=;
	h=To:Subject:From:Date:From;
	b=AE2zyMvqLim8Cmt7S7cSj2rlZiLuNLJ5c/g0wjAMVPpaHC3qk7fd3UpF53sfpRosy
	 kBgWkM7kcdzg3MNjQJ/3rrh4O7dqVY0C8h5tnbElY/rwhkzgCiPvaxEsZC/IvHhKiC
	 yg9xK7pFVGb1ZBA05zfblnD1l1lAOk+7zkPnflDkTX2R+dqImJ0KfSRHfNRS513dJD
	 ZfVPNUUxrHazm2buOQnGzEL9v2UJkY7P4WEbhwZDjT0ItCYVWukFDqhG8F86sZPqCU
	 cV+Put7U4ykUhnv6EZui05hQlkGMbzOft+7zWeMvkZip/tX0/ToTNGM2UlhaQZLmLr
	 6gAFTyrFR4FyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55435C4332F
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 06:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166598705334.32420.575646132278467282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef229c7873880bedc9f9c251daaa8b740598a6eccef27c5f579ca74f7539a6ec
Date: Mon, 17 Oct 2022 06:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665987053
