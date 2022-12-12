Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFCE77B
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 08:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B8BAC433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 08:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670833287;
	bh=TsZ5MusuVdqB8CuwWBHnWRwRDdg4xazFe5I3bNL+Oeo=;
	h=To:Subject:From:Date:From;
	b=u3tqVmTxVjjjLzU7vBAkyFtcaVH+hwUs95q++TbGmPxt0n3SA18/aJ5wmlNJkRR/6
	 ZcpXNkojc/s8VWNB2OKDxCwekIEvWtQICu894T31+9Oc2z9FMQIx3tLHUZUXJnA1md
	 He7XF6b7ehVjU1lZBPnhWR4mIFmiQO+VO/2I6SSyBiqCe0x18XdU0qmoD62IqUDsT7
	 Qi41f9rdooKypFT5PCRPWPcj8iM9+CRx4Vw6FDNuGpq183FuKrc42lG4ZuTJmE7PW7
	 +aRScCecFP376TBIFsaShufqfHA+qkeGLlg8SWUSd4tt4CzDc+mAD6iTswuCaczvsS
	 QHiY0ejTyrzbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66A77C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 08:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167083328741.14732.2453374756051364345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0528bff6bf686e1042b96e15461d479b0f5aec507c4cdb3d232ad1adb2e8fe2
Date: Mon, 12 Dec 2022 08:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670833287
