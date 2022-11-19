Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3B68EBFD
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 21:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DAEEC433D6
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 21:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668894654;
	bh=9G7AEP8P9J85B6BbOE6iN5hJAljGUnPkbCvHT+KO+30=;
	h=To:Subject:From:Date:From;
	b=Lq0u0tXrqjENKkAU92euqIqCe20y3xlGQFVu1qz8GlzBO73qtvE6kbdeq/06F3tRY
	 tE5OGXm8scrIytycwDfY4Whg0gZZ4bIewYvPemUSwV1tZLEuxOf7H9m9n3+mUxkL3t
	 N4uHdXBtglcRZAUzCktOm+fJnxHfmQSJlKJxgCMXQ+FwyNaHiRuVrUB0SiQg5LfJZK
	 c8/0+7r2G19UCNI9wSJuDLOUcbyMFeLyMPQDJy9uj+Roa7tOgbC2cXgQfgzrbC0wKb
	 J0PPgcevtwmgpSO0y8zeMpKzCC+0GgmnAb0EagHnrPwOWqoyy058BlLHgUDNpg2nXL
	 Ga+/p1oORr+Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61600C4332F
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 21:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166889465436.18835.6978815202532830228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04cda37cfe2e8049ec4df22e7480db9304f6cae246464924a627d7028eb0a6d4
Date: Sat, 19 Nov 2022 21:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668894654
