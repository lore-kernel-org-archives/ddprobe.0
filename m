Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABF0A1FAA
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 01:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CCD9C433D7
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663032653;
	bh=DYu8EFlXzVJqxemYzSIzm3RO0NpRIDELRWa9Uzq/d2g=;
	h=To:Subject:From:Date:From;
	b=SO6jES7SS2bDoLGxCzH9snfw4yOcNB+WMBL+m9T/raqL+uz3E3SP4n3btMprVWdVS
	 2PZ4WFE3xR0ysJ8Gz543SEDLLFGHokvFkJroL7sn7DG05nwVQfOA5F9QKvx8vbK/2G
	 NapNrZtgIXlL2Tjt53GLE+iPMp9aw2QzVl3ZSzMq9e5ZjxRoDjG+YtFFXhLiRWdPI0
	 P2AdBkkzs5PvpD3b7SNkO1DlnmioooHjriTwN7yaAO2jAyY3dIavMHMz6bedYG2c9F
	 qSHR7psCKvJY4CIutJy+AYkW06NdZmakYz0TavxHFnwlWdV75yV3hf4kYU3y4LwGlV
	 OWio88y4plSBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50C23C6FA82
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 01:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166303265332.16440.12192160836870024089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcf56f474896b6f91bdfd563f63ef8cb15fd054a81fdf9403a67cfd65b25a271
Date: Tue, 13 Sep 2022 01:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663032653
