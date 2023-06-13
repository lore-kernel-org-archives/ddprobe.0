Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67896136A
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 19:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B93C433D9
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 19:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686685028;
	bh=mGUHwh34ENR4LTsV8mLu8D4EJ4YwMJfNxED8qDgcKsY=;
	h=To:Subject:From:Date:From;
	b=rmXhk14xcbQGG7sPTMQPJA/Xd8X9DQuyexMF1O0Ae5iEdKk4P/NZsUITmwiBU08BT
	 lMJ18+JzRL7yYmGkYzZ1iewmzFWZ6cBkPaCwIaIuD0+cPrCxP1tCUJh0o5G+qEo5qZ
	 R1LmRLMiHnLU5YdKBy1t7fkuKeqCe7Ec5y542TibPQd2c4YVkIBB9pjFReTQOwBs6F
	 Thj8bWEmTAkAwmWW8QivhUmP5cOuc+fM3g5ynh+mbxjDC6j2e/sg9Zup+iqXivTOWA
	 WGE8oi5daIBarRdJr4dNwKERcewyXcesE76/bo1zXDokgpbfKb09xULliwq3DNFjZd
	 KAmW7vMuxCWrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A67EB64D7
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 19:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168668502870.14761.476690111717219598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ac271530aff5bc170b73b5fa65491ca55fbfc5558a15871b413a5e2109a970c
Date: Tue, 13 Jun 2023 19:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686685028
