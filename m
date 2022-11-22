Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C638C10FC
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 09:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66683C433D6
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 09:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669109454;
	bh=xVw5tPW4nLRc74aJwmK8fYPJnIhJsMqACr2rly2NGhg=;
	h=To:Subject:From:Date:From;
	b=Jz5hVHnn96KizhO1iUa8Evpd+RePfmAqHvkczc3dKaqZd39zFepkQVfriy+0pgpUy
	 7yNu6ed6J+zCcQWOj707fYpMh2j6RbvQOJ6PUUVzsicFUUdzniMkon0zkcwj+K7Xl2
	 trdwlQs4e14k2vtpZLE1AwYgQsVNKO8DaTsZjF8lCrFYJdMw+uyHE1PAEDmKwAJMpE
	 tG7LKNh604uh7X3fKozMm4greIq0IlmDUET1Cn1mJhsO1cDviRJJLwo96qdLWfo4UN
	 hYSyTL+5kuleKaW1+Rs46+Q/hzMHOi98sy9mYB9BFoSFg1I4vBhOFkna2hot90+EbO
	 VjV4RxcMFdnxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50D32C433FE
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 09:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166910945432.1265.9078539942071646854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 916b543972b665e23e93174b697db04f8fff33964c793419b99aeea593d00fe2
Date: Tue, 22 Nov 2022 09:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669109454
