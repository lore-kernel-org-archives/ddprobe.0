Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 478867E3
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 05:16:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3D61C433C8
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 05:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688361368;
	bh=23iC0ToIbOJ3/eIwnYMHK+vtIwJZcn0hBPk2GKGjPnk=;
	h=To:Subject:From:Date:From;
	b=YdfW7V8BMnRGgj7D/4ntSlVbbJongbVydvaPRonEX2eFbx16zHXDm997rb2b6TOM7
	 JLL7IfgESIfjrr0TIw2+81YnyoqNCZdIUYvA5ek8gjfMlyHDvZwgbVVmO+Q0Ixoc0K
	 rPagPi2NHSA19z+mc+N8rmkzYlWTPIt9UTHWkxDic56PUy1xpryoplvAtuAqWsZ29n
	 doVSA70wGWNKrMkzBAeLI0DFzqX6dUi0bvq+TLC3I/N7H/c3Tpg7uol2Fd9RYf4V9S
	 AR0sImk0eV8o80HPUIfB7kUSwqIaPGkXKguvGBq2WNdanv6v5+fpt2sJ2KB8WIL0Zk
	 bK6AJk2z1zB5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8712EB64DC
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 05:16:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168836136867.10245.9550034162381533946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ddd7b52b81757f548859bdc167c5c832cec49baa4baa7c510fa5467987b61b2
Date: Mon, 03 Jul 2023 05:16:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688361368
