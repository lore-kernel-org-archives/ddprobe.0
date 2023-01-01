Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDF2A33CF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 20:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BDF1C433EF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 20:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672605087;
	bh=CsmQv7GD3uXmfuOUvm2KdRUKc6FOGR31DV5870bymnU=;
	h=To:Subject:From:Date:From;
	b=mB1RSXdA4CSwgBkEo1ELjedK2prNwFkg+YTS2WVFO+q31o7GI2l6nePSAySA0AVvf
	 ML0VvU0lhS1p2WiohbXoQ1rnsNCy7+ZMXBxzLhcPTxKr0K7T6vhCjj0UcUc3fKytyj
	 zP+/HRVqhX0lw9AY08+gCO6PlCE8hujeqPWXgjAqZ0dzjFdrP0YrbzOA8J7F2J+6Ab
	 lYHnHAdptsGuX+45H28KVl5bF7rir2XUfbpj2yLVFSwH581zr37KztgCzgEULJOjwz
	 QmWE20OSKJJFDuiJBvgM4fqpRG3mLmXFQ17HUA01AW9uGSHBh/ZumuGAb63pSCTwHc
	 EYbtOlJyVPK8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FF76C4167B
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 20:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167260508738.16220.3361924393211933189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95f412217cd7ac215c1d16ba78d224484159eea540a09c8fa030bc558b17fdc6
Date: Sun, 01 Jan 2023 20:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672605087
