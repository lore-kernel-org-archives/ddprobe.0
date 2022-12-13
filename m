Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3BB217C1
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 04:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D107C433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 04:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670904687;
	bh=RkEzQeoEPOqKL+ANnWSbXnwQq/tIb3BC5AnjOiOsTws=;
	h=To:Subject:From:Date:From;
	b=e56dZs9zi4gwamILQi/PfsvTMN3WrL9aHewTRkgdimH7xAInwhzZTBNBfC9+J6mIr
	 /ZEO3o2P4+hFvQ+Y/7krX3Csh3CmDI8Pj5F7vPVT9qxRPF5J5mDjuiPIxYfzGW2wuB
	 LdS43UY9tdrsRIdaN+VsAJ1Qi9JZL3c32wcVV3mxfc7pbHaoy62Hb8+dcjIFbNUqpn
	 aaR+Fsd6/rnxDDY3WK7ib3eCzUjWn8yNI3VfhtONM6xPCKrSxHN4jyI8LvPL37r/Hn
	 PojOzotnI2b4DrO2sxw3QihRTm0ntilWsY1ZXF07hbhLA6WEQa25LKCXMLuFY5D3p2
	 7k5DpnaHqgWUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62E97C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 04:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167090468738.32021.2319913562408701909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0180cd6ede8f42b83c9f30dd7f6e79394b3dd74d2915fe104aabfb3fa5cbadb2
Date: Tue, 13 Dec 2022 04:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670904687
