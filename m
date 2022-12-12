Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B56A06FD9
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 21:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7474EC433F0
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 21:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670879487;
	bh=Ph8N1PEtaUcKwL6TYpsDq4Me4Cz9zOIpzDXC98UVtcc=;
	h=To:Subject:From:Date:From;
	b=BJ07KvaygnXVArDDO5hTmWxgCOJUsP/2cO7hTBZpVMtppjOjW5C4I35ELdHkdgI6O
	 07YgP1/aZvbwJ+dxCcYXdTxGphjOrrB3N9iqEaXlWZtm70RAu9lDmypB1IJGb9GRFi
	 I57IUQqSJvLBLywBb8/Mg60DQJQmTB8GlG1lGkReBRs+yxwcH29oamZjHzQ8S7y+HC
	 8TZf5R5UeiSMukbSMbE25YM2PZh8l/TNnew//rgAO28OQwRQEzx40aso8xHhfqRj2N
	 6syobmB5Koyu9sVSd35ng1+IKOGKIa32X/IpFtF1froMHSADVdzHqVu/igs4qxrvfb
	 68zFNjBv7xdRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D582C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 21:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167087948737.8028.15078118988289950674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af28a1c99d538312ce9089a88f8ae0fbcc36c22a26e8a20bf1ede337a222b3ef
Date: Mon, 12 Dec 2022 21:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670879487
