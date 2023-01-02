Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD53C7E
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 02:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CF7FC433D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 02:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672624887;
	bh=CG6PSz8WHZs7dOAZOX8Or48zYulMPsgqPmhoTeLwGeY=;
	h=To:Subject:From:Date:From;
	b=hAscpz4nT/0smhnkEsTbyQETQMd6PFqLDSSNDZMxIK9Mde0KiNAMJ7b0t7vtZt78A
	 Gpik20/ZSzzo4JAAwqhMPR2gKc5rG72/CJrrtvVQZqJG9rTNb3m7+SeZtgAyd0b+ZV
	 pYFNmt+xs39lOIYdCgAg/zZbqIv+4vM41R9/Uwsv9lsCoGpU1HeZ2NdxoMWhtajQjk
	 h9vYUt1Hf+dtxzWJVjfuEN9Divvblth2sfSt+cKxUuQIw0Hg127XjpTqHz5OwN5iwT
	 s6HtU7Lc3Uj5ZFSyZhGcZ2SX3Qy4EYO2QD59NlM6UzSVpkvd2ziWAnJT2YCbJMqCZU
	 qWiAEq/0BhgJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DE63C4332F
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 02:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167262488741.15160.9881363266645531667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db0fcfe3295b984e0774183ea6bd968fafb1fd20024062e29f94a90d929a29c8
Date: Mon, 02 Jan 2023 02:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672624887
