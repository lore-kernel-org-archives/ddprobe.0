Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DA5115C7
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 06:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5083C433EF
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 06:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681798745;
	bh=YVUiGqEpyk6cdJjCOmjMrRBOmtcs0MiPlwxZqhseF+I=;
	h=To:Subject:From:Date:From;
	b=skC38F4ZHcwll+CA6DYdGPRXKAqO+lzl/0xGMc0dc2rGqRyRaHVjnU3ujo9JSKLpP
	 wORcmwNPex0XRZxUQzupRGFkxti4oEszQ5OeGpSaWrTKo6SF//v5y9HPLy4Ak/kPZI
	 G7YalX8rGUKSDvEWqgsB4TW5jYrqzYITdotKEnUAlF+zY4QlKgl6NTztVfXrNH3BZZ
	 y49Hq8kaDddna+fk9uiFRCBO6KPfoRPOPu/TszUXQFICxidq4xUoov5I2qlZJIEstH
	 3sImMI95/4atYNRcq9u9/NPhsuFIZVsQc6zKbnZoD6K2vv1sVGlhIBlb4FkYCca/Xy
	 hzBOOgiBDtoQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4C56C77B75
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 06:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168179874578.18533.7296557339078313638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81fd8b7fc8f9603ce0111a10cfc7aba3d235f8b01bb340cbb1a7ad15ef296344
Date: Tue, 18 Apr 2023 06:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681798745
