Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BED7DEC7
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 03:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FF40C433D6
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 03:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668394854;
	bh=t8VMU0oH7g5zw9y/us/nBhXYBgctLxvYQ75lGPYmM0w=;
	h=To:Subject:From:Date:From;
	b=rSIriEVZtuWM2SUsvdLv6w8P1JA/U5FmPvg/9wOj2UvWJjqKTzDHPriCtqDCXO44I
	 vpnb5MPfAcw9Pa1LRGfuD8gbXalsTexbjhJjTsgRksajP35FbwjbjNAdzQPo4EPEv0
	 C8tBNOxMxHdF+1RDLoF+bFt0UYWQ3KdmjRT2FXPXpZcTPGpyskp1smNYpVTC/3s6RW
	 hwlN2VPB8HapKp4LfrTQT+WEAmsTrOaS9T1eE3kV/PPe/kbMG2ADzfCcVhYhdus+ZQ
	 gm7IYQXiXy67HHb/Hpt6rpHHLoLfglSIWm4v0vfOr/dV/Pyo/88NCflw+8DclBOidV
	 43ThJ6cSyNvaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51467C433FE
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 03:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166839485432.3795.643677535668069207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dbfe4fa3ec11717c2cd1d9a23276ceee4a2c1e6f12881b8e1d5374d6c56e0b4
Date: Mon, 14 Nov 2022 03:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668394854
