Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEC5BC136
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 19:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0936DC433C8
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 19:34:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693596849;
	bh=1MpKu78iLeuebZSbjxFPBEJQO69G/uhg9UEgco/465s=;
	h=To:Subject:From:Date:From;
	b=K5ZwBO1Sl5FUD2yn1uktoO/k6uHAH9EJJ89l7OryequhqmgON4P12dULyYfRTky1K
	 B3tWRXCWTM6Rc61jcc4v2Dxa4uyQ1VFS+cY0yyJEznHGq4sNsRMR9carDitTxhs/3y
	 SYsHy/ICsJEljRni3DL04GzM6IdsEbG2ayKPY8WhVVwuSIvLsq6B8qjP/Lci8n4sZR
	 Mr5SkxpDDds5vpk3p893zQouoPG8wezXJXYHW/02iry3hSMw1YMPo6vELT6TqWTK7u
	 9Mz3IxzMGtUDeIfTxgIMcbk57bk7XhdARfweHBnNK3srWeWf64Zr3xcHx9/jyd3rjw
	 0Dgs2vZIe/qIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0C83CA0FF3
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 19:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169359684883.6051.4963262801961122027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d5d6ceb2bf52e849eb46f5430f6b2daf55dfbb0e4baab8222faccbb99dcab3e
Date: Fri, 01 Sep 2023 19:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693596848
