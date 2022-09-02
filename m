Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD47B7E
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 17:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 757B6C433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 17:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662139253;
	bh=El2TPPGCXTa0shaoYFHWk5r5mMkX8NUYLTh0Jp2Z1BU=;
	h=To:Subject:From:Date:From;
	b=piFwoHPfhj/vTtSpySj8sLN0XATobxVzRmPCXuUuUZ2c1uTJswYDsEXkMwJpnIVSe
	 coPnaIbLQWtl6mNSRUHhXlNwJ/fn51sj+uzFDIQ26sfTbocQaNDVvH5PLzpL/yfVxi
	 f+yP6QMFWn/NLU6jep0/Al4QpC3xZVOLtK3uJE0nw5gy1yHWzKwsmoqjKolSbMTJ0y
	 xdsheRWfkR8X4dOM/s5I4i90kMkLxhiiUJ+6i5R6ncnhO9CsteSjzSNYp9Te3ZRxlR
	 4usFH51GsblLVmnZ3Ivr6BYWAdTxws37daG9tquJboDfIKTQBs2saOpha2gl11LswP
	 PdBznKDWIpydw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5695BECAAD5
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 17:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166213925334.30022.316992489873020637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be17e4dcb7d5e27b405012f104e043cf9450259edf3c1a8d986f11fcecf07543
Date: Fri, 02 Sep 2022 17:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662139253
