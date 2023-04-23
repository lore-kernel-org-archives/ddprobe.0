Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342CFEC5
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 12:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D80C0C433D2
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 12:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682252465;
	bh=pueMRCx9Mhrz8pTuPbkez3l8TZtoVe9avaDiad60obw=;
	h=To:Subject:From:Date:From;
	b=mqz3ooEizVH9KIgKExn7kYb5VGw/FjYZAU/zAFBUmcBCM+2BRRNiRn/vIZHAQdt+1
	 odtqxlaKGPy2cqtAGEyUFQlm/vRa0W3gCXQ2xMYPxsDK0758liNR6m6Gb2ApaRRO0b
	 DdLu4csB/Cp00pO4V+8IdUVy9Gk2RkBlKTdfjITO3hvpkera2Wc/4bj0zd2Scoc0T4
	 08ddvKvE69Lc6Z/EBWlMxS4LWRQ34uTXbgl+4UOzI8WakepEQq941+n9x1oJKFcvpf
	 xCK5Br6KGv645QOpiIXda+XgNJro2s5C5+IiP4oW+1GIIKPiOF+EUR4Uyx6Jh3ElyL
	 t/THw0J+wq3tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9510C77B73
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 12:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168225246575.16782.10680141017275738940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ba220e3438f8a386efd52e2e8db2cde8d3026c8b47527d9467dd107757df411
Date: Sun, 23 Apr 2023 12:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682252465
