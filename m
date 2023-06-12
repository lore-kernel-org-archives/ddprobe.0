Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82EB9101D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 09:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE2B5C433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 09:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686561185;
	bh=WjG0fkDhpnCgz+t6mVHgxD7gSTp04BFBQ+OqEYWyXxE=;
	h=To:Subject:From:Date:From;
	b=KXNd0U2f4F8MJwAnSjv7lZHMCrWmDjgH3WLRJeo7au7Sm/J19//YBLXjwF5/lIlVz
	 dNTxAS6atMtvr9gK4JsvlYMcGJ8U5VQrlzGLm4tkoSP33hduoZB5IyKv1538U0HTd+
	 4fux2cwEb79fE61iy0xQmihMy87eB6oPbeTOvl/sQ2MtmxtMxVz86SnXS9wSpDjkOA
	 4raW39lAQrPg9tVEiLdvYMt4SjDqrCAN6y/dq89hxO3hbVwEfy+6on2ImmLCADN+/U
	 SNZCTiKmukysGKlXtc+9NfzlEpdDLi7enR2LAeRxGf4fjiz60Ve3/el18XvmiA/2DB
	 /0Xc4F9jkeUcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC33EC7EE23
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 09:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168656118576.5120.10994870575290088559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce0d55439b74d2f19f02902a09605f55878f626050fc8177b4e826cfba5a9aad
Date: Mon, 12 Jun 2023 09:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686561185
