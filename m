Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EFB720EC
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 05:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7D06C433C7
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 05:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691559188;
	bh=GssRIkZold3as1ioW5cZ6vhAPEsL5QwN/8C4kyUuVL0=;
	h=To:Subject:From:Date:From;
	b=pvlR4waT17w17iFJ9vVT4/mnbpuTCsjm9BiIs0vSW3JqJPY9YIH/XoFD5QBl+Vnw1
	 6mzSuJiwm9x7fDsXrh4E1rz+zDRWGB+w9xbZRIkP3pidjxyiZbWeSB1yXwLswmgBha
	 CP7Ski6jNyCHPmjwYB4/6iNN4yiW+YCPy3EyhHHuM7jtzBVyq9iFRhQd4vibAsI4ec
	 V+Eu4ABEfXq00Q9WxzkWavutIYMpFQ/iaRaedeNXvMK0qeicb82Of1yjyltjayYb0H
	 Mlx2PJK92hS7PWIaLFwci+XXnTcTk6Z/li5J/urQBZkF92w4UROj+T24HfJSsf9mRd
	 AqKLr6fE+VU+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFB1EB64DD
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 05:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169155918867.25460.2508943153948643489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3de2dd989daa566e4ea2b2ec66489a90358bffe47e5f97d079ba725ccc9ec15
Date: Wed, 09 Aug 2023 05:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691559188
