Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8452D8828
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 09:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8F02C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 09:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686563585;
	bh=Q+ocNRH4qv4kxMEV3DQG8t4SuZTIqKGJ3rcu+1a0gLM=;
	h=To:Subject:From:Date:From;
	b=KAckVeRDPGppDNKxVWci5ZRIbYkV7TPHNMa9vn5Hs5Lb8jq7fpxuvEWDqY+xNxjy7
	 hrHWeNmKJPdxolApcKFGPt0vyeW5Y5whVUu5eDtMTnjKQWm3XHxtTMRV5QQgdBds1y
	 RWHyjjkTsCEsgxnUnUH8DGsnEqnP4lxw44ump6iAq3iox3SaLiKR29ztMI0itMpYi0
	 +pUNF6byqGLxBKKV27Jdii2KNQecVPsO+s3+SiJpmI8Fhm55oZfGuemxOGOPDM+yAJ
	 h05HVCKQcTg3KYRmxyuCF86Gl3kP7wNHWCqlJMVitWOu8MTxkTfqBx6bdpPE+v2rux
	 yLXJnQFMSUuLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9855C7EE2E
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 09:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168656358574.18271.14698394162645328782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39a86d331cddb0ec102d53abe0c28c36474ca42ddadd5721a4221f5a35dda2be
Date: Mon, 12 Jun 2023 09:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686563585
