Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD8AE63CC
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 19:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EFD8C433D6
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 19:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668280854;
	bh=21fK2dFC9yDJ74ttDcrYey5LsZBi/YwiQqLotQb6NE0=;
	h=To:Subject:From:Date:From;
	b=qOu/s4ruCahBitQ3keqfj1ZZelrnGK5mw9HjH+QGU6ZbGEEZ7VIdEC/TK1kesotsJ
	 UXyGzfR/C6rB8tjgpBBduqwyJ3N1w5jJ9YC1mKULhvwzNbGtKXuSX0dNvvXPybvOQu
	 zIKC/bfknmDKiidymQPK6qjA9PT0yAJ9ErEtCmIqB1mYbxJjTrF9DJAqOdopdr0Y9T
	 qQy35+I9NF8NmM2FxXntiCiQaoSiP2alccWY+rpAo2PfaHmkgN1/QxTGrWU5X9gcFL
	 wQWvmZB13xHrUxOI3VDQBxW97tXLpurCD8x2W12qv9FGFX6wNSQpn52iKQyPD0vWDX
	 Ar3Xa0WCdSxTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 605AEC433FE
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 19:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166828085437.21785.13214377919984795362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78195a4511266a7797b545b34f54e7275408d28416a14a396376da240436b649
Date: Sat, 12 Nov 2022 19:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668280854
