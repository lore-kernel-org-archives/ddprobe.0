Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AAA52FB3
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 21:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8178C433C7
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 21:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694034848;
	bh=u8X4SruIuklA9c0T44r7a2a4xeU0HhwNF9ktUfC+aJc=;
	h=To:Subject:From:Date:From;
	b=Nzmw11D7Vspr68W0bunmMgLc9aoSDhsZDhYRZ+OPpJ4o9K8EAWBiFy55DTFv32t7h
	 j8C/SSAKIIygNGdOrmc+wuNrsRQfoIys1Pz/2UwoP2C0DZLOIlw/ygXzA1pONFy7Ql
	 ZMpnFN0afcdGcx+9vP1edMnDBWbg2Dze6sS4v8wypMWyqXCfaIOZYP0q6ddwW2Nbxh
	 f24EzQ0SHfc+HQJoOIZlM1aHsM/LV5/7EJYmygq5B9dGhy2ACxyutfD4S1i+6VHda6
	 xLlmfzUqQRkRUlS2biBa0+m+MxRnUiV5/ko3RZk9FMQEI7bofA7NS0IriO2xhuP9IL
	 PA3pBxug9Qwfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC15EEE14C3
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 21:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169403484867.20972.13319457025045278825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8d30b9f83d15e93402f6ceb6cde34d483c3512f24418bece090333f3a1933ae
Date: Wed, 06 Sep 2023 21:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694034848
