Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C8EBA927
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 23:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 03F9FC433D2
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 23:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685490186;
	bh=8h27BF3OhUjsMaR3+8GD7EHTr+ljteH3Q+MAB8/H3zg=;
	h=To:Subject:From:Date:From;
	b=r42cZYsRaj76BX9UExyPu9iXpmQoEcjHMEi35YvhOy+nXKNPXwphUI0r7ozTcfRV1
	 Hg6VtZx020vRDPFVLOJomeHfrP0HX2sxK/xveM9Smeg2rcwu9VYIHrwDFErjBXKOAF
	 /JmKzmCwhvDzApx4BYCuw6OOwCG0lb5S9cQwCa/hqNI1JrBpCpA3VrXY+J+njzBQnx
	 hUQUCGwSU7XGbbpjyvyIumXe99CArI7Ozess58+NAHrZo9EA5kN2g76LnjvMkN3mJm
	 nzNOad3VZxSsYkmY4iq/t3QmkQbJ4eZKaMU5BjsiYVPslzURT/OED7v8x0zRXWf8jW
	 FZKUB8WEjrHJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D66C2C77B7A
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 23:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168549018585.31487.13789372320248870082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1b425adf369c9704636eec4b5564d54ab43cc767cc312f17acfacf672743e7b
Date: Tue, 30 May 2023 23:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685490185
