Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CE102F39
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 22:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E29BBC433D2
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 22:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681599305;
	bh=2heZu40eoCCLH+UiS8bKfn0pMJJiIieSADZ+6w04QEg=;
	h=To:Subject:From:Date:From;
	b=QYvl4jsE4FqHA6xeFf9CaNFuPWNZ1e/Djy9ipQAV0I4ArSSZjV9ECHcQ6vU+LW0LK
	 PMHawxDSqwQWuD4aee9oA3Q4/o7mD0Cgl7y9HbpNV3/mottxVGddGdA/jPpKrkUnC1
	 Sr+dnHEooV8d+NGvPwgwW9T6BZghSBivI4aoqVSyrrxyUnxyYKP8J6Lzp4i3n3i+Z9
	 H/qm5enuQJL6+CWDcK722WzT1lNusFX5HpWFg5Y5VXEMgAb2rMv8rZH4aIoeHib3nN
	 ZYviueHNGqzXzhz9Fak1uJjzhVP4TbfLTEPxhPTQAj+1cKOxI7rPPuqEZbkYcQTys/
	 3Wvm3CwQxT74g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C36DBC77B70
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 22:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168159930574.6326.3869437987802342824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b17bb816c24edca96d02ec1e5e06fcb4984b7816a5a3a90082a8c8a6b7e0f2e3
Date: Sat, 15 Apr 2023 22:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681599305
