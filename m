Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDF14538C
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 22:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C1D2C433D6
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 22:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661727052;
	bh=hRjV6yAaV5s50am5pfw1Z+tyAFoTT8XWkO+ZyhS/sx4=;
	h=To:Subject:From:Date:From;
	b=sQ+a9Nm1VL+FA10H6YmqOgZk+rq2ufyfN51gttFqex+D2b/CC13rx5jtiQA+mMfPr
	 xAe2pVm1KClmfNEUxSE90DgBVhQ0zXLsYBV1nN7iOUnbymsIUjNFrmBc1cPepC5M7t
	 EdCS9PRbTmU+jeSeJyzqGr1FlPdwLtp1X6wo0eUd3Ajc6lB8v6sd5My0xPsj95IPn4
	 0qsQoUy46wC6NvpyKSrs6JJFvKdonfsSU+SqG5qfUbTjFAVWXU+bO8K4WbUxZ9JlIK
	 w+raMm/BUchgll39V79V1V+HHg/tuIDpeq3ORdCCc70by0vZ9uHS/9ky5i8Al7iVJQ
	 gU6Pszqa7gDXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D865ECAAD5
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 22:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166172705235.19156.7698948732795784834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ef0b34adaedecec327d5b22caae9a286dfc1dde4fa08fbedbaf964847b50359
Date: Sun, 28 Aug 2022 22:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661727052
