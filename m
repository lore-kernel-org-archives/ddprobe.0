Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D2BB1F94E
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 13:57:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f6gkpt6F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB07CC433C7
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 13:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697032628;
	bh=+DQyw95EnMje/fqOY8T9CgZohxvfGDoLnvwmuSa0eN4=;
	h=To:Subject:From:Date:From;
	b=f6gkpt6Fkf15BMt13IwUVbsnBwOx/nKwRbA+QTBOTTfJYl0B/Tb+ghkvmPxxfgqkR
	 OHi2OC/KePD0LBppvipr1dyUVqVjOzndn+hfDAXVVIDflrkE2Ymbsd46A49vyTIG+7
	 qeOBc03bo+iRyZSKRhP5G56b1Wjp6rUQKrdRSIp6+8qytCw2kdhC1jTplJ7r3CmY7G
	 QRHX0VPiItNEjYA6EE2JRJAZbOhCuB0HIasUsjKxrILf7zV3uwjm+rF8NKBQhYsyx+
	 GsZqPpBfVWZj7/U1j23L7SeCOHJBT9gTxSK81I1DZu/WETJGo05Vh+NlgQuWdikcHL
	 cX9xPoljr+43g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1274CD6E6E
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 13:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169703262871.28681.7196405707610013193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9abac2bc9d22a566a7fb6318981cb0582bd98170d87773b7e98acd62f592709
Date: Wed, 11 Oct 2023 13:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697032628
