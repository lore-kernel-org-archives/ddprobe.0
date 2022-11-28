Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE336362
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 04:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67870C433D7
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 04:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669611054;
	bh=tm7R5h5dLKrjv3ByYgMzNreNnMtIBFPtRcteOKv3HgA=;
	h=To:Subject:From:Date:From;
	b=Sq6Jlcsx9dingXaVn/BboHWjMmUJSAgYwTmlED+X6oQz1Uq7MOdFtorKq4KXTjtPf
	 zelH4vWQULYtcA4tZrfTGYmMW3QjOAch4oykhiVJ9Rl1mNh4moA4vAqFU+VoE+nwAF
	 b0diQuxGwAc202cCN9Y7hGswFUDGEYWQ36gO6dxC6iOCg7uOW9sZnp0Y6X06jF53UQ
	 n1oyBWpfTJ25EWpZgL3JefekQ2Q/vF0TXve9U1olYpC/9e4irXCmwqn54j07Yy2kGw
	 8JSAe79Ga4DP7rwa5zi20WHzzHQgKoIwsa5uDDwU/2gZdsmoRF691e+OomE84HDJNV
	 davRJB51tIWFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51B06C433FE
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 04:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166961105431.6483.11335253583213856812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 553eb8227682fcbbd181a043fed818a5c7ac3736e3ec0aace79fe6ad5cbc13f8
Date: Mon, 28 Nov 2022 04:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669611054
