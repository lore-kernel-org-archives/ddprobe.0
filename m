Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ACC12CA6
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 21:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0796C433EF
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 21:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678831145;
	bh=OeTBxLI31vU6xU5fJxn4W6pGxV31oQXwhO7zzhIQo4Q=;
	h=To:Subject:From:Date:From;
	b=Bgc4TQ/zY4EhZVJ2NpUPV7rUlDq7cOoDfgab9ZeOKSDlXRGGLFomEZZKs2x1bABeB
	 9Kb/84EtvYU5wRiQ+V5ltBUH56c+hye4LFjeF/HejmuXoC4AaHLak8l6VhLIh0ilRs
	 9xZwbUhWTYP6h5l4h0/qJR2ELm5WW17Nd2qjKaWeodGYpdSBrmsiA7paDAtJ0+3Mwf
	 t9cmNSavIwcGxrSvHe/aMLYsnCkrPmcAz4byblzNKo5osG0Av7gCyiQnF6xK3m/EGh
	 TGWFY9aNkTWZXyuqvmTeJ/ntUH9tiqkJOAhkWsKoxcAbFU+QEDvrRk59tBlzn3TYs2
	 4e3ktlAYPqNwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B617CC6FD1F
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 21:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167883114573.31507.7911051535643495662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bd26aa7f0ce0a372530ce36dbc4e997f6efba41c2b9087a6d3a69666548af9d
Date: Tue, 14 Mar 2023 21:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678831145
