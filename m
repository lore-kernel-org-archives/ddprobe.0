Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B01053207
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 16:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66BBEC433C1
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665418853;
	bh=LMZvNd7gsHo+LZmNd33Vp75qer46EcKSZ6dzXR4aCAE=;
	h=To:Subject:From:Date:From;
	b=kvFwON+SbDNi8KMCnMidGosD2v/ioUjz8r/kAhAyPIllkJn/O0LSErPdSuHo/ErkA
	 Z/NrcM5R5s2HrPlQFWDrkWAGa7V9l5NqQIWwRRmBIoMoOQtnpjm80C4TPsk6mw8DRC
	 ax80dBgXvm/mkBjw22qaI/UpJrBawIr7yV5801hds28KQyMRdxnwvH0jqlvPFd+qe5
	 mz5+O09uzEZopaUapWaUR7CoztQxgHu/6xiTnh/hnI7BnKPCHwPisEGQ1MqMIgUiyd
	 7J0CqC3FgwRQffGA3FLRCdQbnzPA3LaqACbKHAH7qSwVJbWLtNXbGy9ulmUQjeQt80
	 plxeyNUkE+vrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5006EC433F5
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 16:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166541885332.26227.9567933413102748105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76c127343b6052dba65f14c63e90292abca2bbd1f5cc6019ef30d6e60a888bda
Date: Mon, 10 Oct 2022 16:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665418853
