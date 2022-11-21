Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA97A7E
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 07:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E353C433D6
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 07:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669017054;
	bh=mPTmy7QqPkbnLOdZxBO1SJMCyVcNBWYIqd89Fgfsp4Y=;
	h=To:Subject:From:Date:From;
	b=o5tw1ry1d3zxMw31heQCiVrMcqRj1UN3yhZhngjcfCupYy/6dVSzzlBiQNOhhWDwP
	 GOgLMEX4l+oHoWGRPceG/au/cRQpOqPUn37a8KCEZfaHzn8PtZ7P16zyqQL7SfJGb9
	 4Bd3uovkAYcOGMams3toYPUKf7dCMYBcl9njMnw+I38I35SXcR03F21Upy+nmb66+p
	 25VQj1Zd6HqyZ8J53joDIs9kja6ge/RTeYTGvPg5EgEOhGHmwlcMqCzXNs2TJ8B4UD
	 g1JY+ndzbC2+xpZtkxOwy0Qa38hMVGJGgbcn8QkRlBqDxDR524qhPMrqYSRP2rv596
	 U3E2pMAkX0c4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FF3AC433FE
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 07:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166901705432.6792.9949074020998288007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b7835c8a4a27c8ac14f3fd1c8a5fa6c117eab4cd3a627a1b75f6d4c08110ccc
Date: Mon, 21 Nov 2022 07:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669017054
