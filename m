Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3F467F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 05:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72AEAC433C1
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 05:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662874253;
	bh=wS/cW3Obc1xJ62f956YpyVZQYIXU7w168+Yf3qaWHtg=;
	h=To:Subject:From:Date:From;
	b=qujCZkLV0rmiS8h4RHWxydOUBFYd2u+2EGgjvmAHAtJXDzPK0DxkMZSmVIVzfLt6s
	 qv9ODEt5qG9lT7HHtgqj75sO2dpNE5hIROul/rUbEOOoCnFC++QV5MY5n3J4U1qaPh
	 e0yt+hH5aUdL11Y7zBxCx3ErA+T9S99/qY5uVJvyubSbRoYF/H82NRBOvZaFqn9jar
	 ++qUMvRruABdE7d/3fMDGafc2CTRSmgEaOGIqPkkBMM8c/8xObSKPH8m20b85B4YLn
	 qiMkstwoqDunSKkaBYsluXqsiFE9b9nxMKlh3ONr5ER0O2Ka8D4PdbXrNWFdcZ7iEv
	 Ku++tgfjdGqvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53AA9ECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 05:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166287425332.28178.4787968773456812976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8457e1808be71656c195859db64529319b75748444b9b32ba725b0d58a5e6c33
Date: Sun, 11 Sep 2022 05:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662874253
