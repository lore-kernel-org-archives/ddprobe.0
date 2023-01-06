Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E52A363D9
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 14:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B710C433D2
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 14:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673014287;
	bh=aORJEa3lGY2Y3Jh0SAhyn24/a8EhmlKZfHSk01rD8Jo=;
	h=To:Subject:From:Date:From;
	b=IzlnlcGZ80ERLKNWhcVupgPDvKhGHGSJoERFPiQsnuiKc0MdzoE8nWCDCsW9N7D6t
	 mILg0Xpn/Wdvpzc1QWo6/nd0XtIq/w5tZzM/xJGLe0Gz+fYiWnOYseFB9JTw3ltbuA
	 CW2YHD0QZf4DAg87yGEx9y8PTcXygK57U9prXEJRS4UXrLzrPKKmt4kNC/aNzkH6F4
	 4O8JYPUQ/I8SeusQATNfaJ/j5eKzZSbRiqgdG2NVSr0dxBJKWcCU1MJR9W12f3JSrw
	 Oy+zY0MK1kf5FtXOO7aCe+ozT16hph6EdM515xmh0gD/0f/cw7JV9N1BxivCUFEwP7
	 Fg12GxmQeQ8bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CC44C3DA7A
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 14:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167301428743.19672.3977158777158592046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 735d415d2739da9ed3fd17bedf22da78707311089c26a59fb46351e76ff6ac84
Date: Fri, 06 Jan 2023 14:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673014287
