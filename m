Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58BA5EC5
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 11:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEAD9C433EF
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 11:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682250666;
	bh=4+nUaBZL0txq74HIg65uJqF4k9RYVLdZUVr52DrkpYQ=;
	h=To:Subject:From:Date:From;
	b=EtR50GW3WySrdDJoHFJS+lasL0wGe5NXhS+9DgHXVPhB9UvlHbHWxjzkQegS1bY+w
	 eOuItv3Xk16EdeftUEzZe2UhNjZGaDABAW9s91LmcFhAmWhzOyKtyBzFkFm1+z3a4X
	 RysDOfoXkPgv+lF2KfJhysfGwHCa6ZEDbRFShlkwj2oQa3vI31u1WlhynregJMGfWu
	 UkjnRxRpNnn2WbLhP+ReKfFeaywveF+lm9WOlRcW+XfacFcM+q+zvONB7RJAJMTSUG
	 +mv8dNkesFSYEA1FNwwE796aNlJPPtH2M1Z0J+oDtt6drYLqLRe87gVp/4fCDXyUqZ
	 ufw2ERkp5Hpfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1ADBC77B76
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 11:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168225066581.6061.4967914919275397267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 724ed7062c0678b9b8646c67078958b8a63d29c65e9f8a4781946a9b3d481766
Date: Sun, 23 Apr 2023 11:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682250665
