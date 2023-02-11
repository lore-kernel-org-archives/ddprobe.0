Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 541707E5
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 21:24:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC94FC433D2
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 21:24:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676150646;
	bh=ChjFN6w403bvkH+5Vpe0DlgBL2BbyGsbAdiiD7szmSE=;
	h=To:Subject:From:Date:From;
	b=c0YZrd3g0C1NvK26G215m5Kr4TAOixw6sAXYm3i3q0XfRhJPvwkdBK2WCirzntZLF
	 /R3DA/gQ2epz7QfiHIz51IyhRIzUFbYLk7RL5lgoA1oKUovt6N+klrnK+5gT5RUnCB
	 uzCJO68TURTtAQQ81ro05p/ZFNb23UB6Z9j/TwD7DZL64E+IMgwSL0/O4IsiZ1TTvf
	 FxrlE9Z7Bf9wnVCk/ksA/vbLSbOYTFXuwTTk1L/YzOpAxWFkoUMYOtmHt6WB3tjhXs
	 YhyHpPY+QiMyhNIgnJKRjWuQqQQRa7RE3ma6N2rmYfJfGH+eVNwECojJetI/sdPlR6
	 gkEHMqwwVJwCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2058C61DA4
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 21:24:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167615064577.21664.9509829067685336397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f23203827fda97991329bff2e83440a11158cfb90fb7904bb65187518cf84655
Date: Sat, 11 Feb 2023 21:24:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676150645
