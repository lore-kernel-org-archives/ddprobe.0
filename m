Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0637F6D22
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 13:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE2C7C433D2
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 13:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680614825;
	bh=ixzy5XVpSL5IE/SVUUyQeroMccYwXq9wfHgkAvNhiVE=;
	h=To:Subject:From:Date:From;
	b=R90Ub2aYIYrCMavde01XFs1jAGKa34Gwu/8JUbnCwK9HipWz1QUZgAxBeVZTdSfeg
	 o4HVR8qgmNsAcl4ox7/hHAT/96NeE+pNn3xUs9dHT0q0EBTuIx1Y0PGDSOcMA7Nvq8
	 wiPzMa4nx6/ZFyXXLvrqi1K6h5VuDCdxb2PyU8AO4xeyp+UzxA3xcReYxQuVS/e0Yw
	 HtkpAfnffSQgOBGUKJ5t2iarzMQv5GTL3f02pbPUVUVfhKVi8aIZAQe8UtAWp6I3hs
	 0Kwz4hoGQaVCpeV/mi4D+w5pBdPBEyzpUjggWRZs1om3LFr32oWcNlB8p+nPFBrih9
	 Bm52Dh/7fZBBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B62E6C761A6
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 13:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168061482573.23991.9753500105862653140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8a5bf14f39eb6e928351b0a4023540294360c35d24c09db275d59c55928699b
Date: Tue, 04 Apr 2023 13:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680614825
