Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7D0B258E
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 10:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 921AFC433D2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 10:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673607087;
	bh=9RRB1KDMG8A8HpPPqw5PJbnB/MDvhT356A9GK8cdaTg=;
	h=To:Subject:From:Date:From;
	b=pL8QxN7WRIwgFP1E3rVVPcVih/kNgD8QuYPSdQEDDXKV2dIh0p4NE6/NU2obf54y6
	 baA6kFyStQ9HMu/4k844faTZFFoC7bf0rv+U0a3SsD6ljQd5quPN28oyImpOhfASJ1
	 eyOHF3Nqm3kHnXOtfKUXf3el6aQAvD+YPwsNEHrmZxm91+PWiYG9II+lM5uvbrYpRT
	 fuZ/nuYBSfIBRz7KAC24iUsXqLyEUDcDFjjBbFH94SpWa4KCifx3eT4PX3NgWrQo0O
	 N0EDCO+q/aF7icjh8qWPnCJOYbh0g+wVNJIT6LoVANBXz4WZwWBp74h7BTvJGGxF/z
	 DO7L2rQ6WR3Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75224C54EBE
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 10:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167360708747.20013.7252787782429564948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7aa1a1072a0b1773d2c27ecd8c1df4fe46b2154745f292e1ca6937cc7c3ecd33
Date: Fri, 13 Jan 2023 10:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673607087
