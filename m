Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 594F67E4
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 04:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC82C433C0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 04:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687666988;
	bh=I+VWBCNylrwLehJ6ndjiFeVUaQRBbQQBpy41x8iPb50=;
	h=To:Subject:From:Date:From;
	b=IlOH+0hnZoIxXcb6SRhsyUF9am7uPvRP6+AyAR3OWk4+ptJZhksPJZaTopZziC/N+
	 +tlVKGmAZt+3RIVZsqGpwUmSnz4sJ7ANiFErxWphVkVwoYLnn5MX/NWedit1E++g64
	 Ipc83BdXeOtKdYxJdxZdcneqRxfp/8oh1VYYAY5mHa9zErpH2iyr1z4aS6Jl2MV09D
	 fbzjTkL1L2ZftOcRnU68tR+P0xDB7y9bd1suxrkycjEvJxq9mxpUorvkscGt/8ItjB
	 /Tacz1TlbgC5Yj+XGh09Qc9DTLaoTVoQN5F39DOnRxnk1M+OExmK/KVZKNorzifIcq
	 UshkBRHtTikNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A0CEB64DC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 04:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168766698868.11272.5574862660337783451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcab92edcb20beddc66bc56416e955004551ee82f8b7a1283ba9f1abb511bc7b
Date: Sun, 25 Jun 2023 04:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687666988
