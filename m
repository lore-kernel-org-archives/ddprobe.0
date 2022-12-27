Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8A5F10E4
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 12:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D233C433D2
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 12:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672145487;
	bh=MpgzBCL6f4P1LCG3P2kr0xlCl95pyziJUm/d+yMu4dY=;
	h=To:Subject:From:Date:From;
	b=ExkDkd/DM793kKWAEW83aVmhBRnnEzXV0X13Dkxi++a3dz90LAPoKusnO8C1u8Zxi
	 eFJ7A44vq1MNWc/qNT5ZDm02tDSEi/t0J/SNG639FR0Vs8D/m/UYkdO0UsJItrFx2U
	 Tq1mAprgQ6WwuYi5E8tWKMnF0nWtdtZFwzthbMea7zZF+u4UzsvqQD9ojD2D0HgMxx
	 0qrqh178GvElpgGhWFHkodG2tn9cABoH5CMGvtLMnOulDxFjGgHuxvDkKtkXVDvsBg
	 K6ik2Yxp9yK8m7L8AvbK4fWCkF+MB0v58dLE+H7SqUedj3tqcS2ZNtMGMjPcR0Zk/2
	 9seLW/12WE5tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66BB6C4332F
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 12:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167214548740.3525.970237922162333579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d1ce2704180e71acb4d4ff6ac6fc1132e6bdc9c6801041e9de66965dd5629a0
Date: Tue, 27 Dec 2022 12:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672145487
