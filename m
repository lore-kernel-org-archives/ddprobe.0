Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10530136F
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 04:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u8kO8yA9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 856E2C433C7
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 04:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703736496;
	bh=va5KpvhjbaYjVPUdYGAdC1XLRVsUp4/49gLJdsJrtZ0=;
	h=To:Subject:From:Date:From;
	b=u8kO8yA9I/Od/JEWegDZFyYOFziqrJs2UfQG8iQURs2ylUpkGHafWlEV6IXduPaJl
	 IohgmFEiX4MjheKq+1GXVAnWMseXfsT8HEoBBLvJN2yiAPRtVDD/3xm6PD3nHwkmKw
	 xsS4XFdJEs3DFeqveYPJZO9o9dBfUdJXe3/Z0LD04NTypdD4rGY8LVQva/z8+poimM
	 qd490OtZTWGbs8Hf8NlmGEaGZKksaRQWl4+XKhNj0x52aAYytRU2KP1P2RZDNlOj0Y
	 e0CCpHdaL4HjOMJqYlNTDMM3FvV6R1U+AxTb8+cYVOMBMAIY85NlSIwtHD+3iwBSRP
	 AARTDj447qSbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6883CC3DA6E
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 04:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170373649638.11793.16053564152075487618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da01e379827202ccababc58f5a2d3dcfeabc2d2b0a542008c82af7c701a99d6b
Date: Thu, 28 Dec 2023 04:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703736496
