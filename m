Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5993EA38
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 05:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6EDAC433C8
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 05:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689918728;
	bh=NHurm4prSHhdvXxNemndVfZYx0Q2Rg7+/hR2yHcryc8=;
	h=To:Subject:From:Date:From;
	b=dwVYiNLud6rexq5jwMkrhnlqNyWn2tLVJkVkrz+uWNPEV6S0Je71H8FEBtKCowSL2
	 JM41SRZuU6OX7hGOduZY0WwzzZ78Hv9hKLoyBw4y7fNsVn70Kq+q1ysG5JdTW1uIL0
	 WRBmh5bEOLwcCwDeXtDK2ygHOHkDHjr3zkIdX/5O33kxCvI0YnIeFM2buuvlmNJQnU
	 a6FPVNBau5phtjPQy2a8wZbEUdn14SEqxIRqhTKFQ8Pz7XSqNGo7DPCo4VoeuKdd8K
	 pfvUypD7kewFYn0YBUHtSsc9JcjtO86rRKB9gesmlArhI57J+V+OrQlAyRKp5BALGI
	 JKsc58VyymT+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1D72EB64DC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 05:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168991872872.25570.4792681364704894852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73788efc36310a575fc206ff83d942f1798f28af14a26d60dd1104646e12299d
Date: Fri, 21 Jul 2023 05:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689918728
