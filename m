Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF5A92561
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 15:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75A9CC433C1
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 15:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666364453;
	bh=CD5ahhMw1vty++eVJMOhQwexXZBIhHm2HDjKQ3azfEA=;
	h=To:Subject:From:Date:From;
	b=O3f45nPuSJlOX3I8ytzVDGuzQQFrFNY0gLVnsDXN4DPolu0Vf0A8nS0jCGyn30iWJ
	 S1A8NjeY2OeXvpsZ4SKRR6Z3Ixr4ThSJWskBtBzi2BFJfsGr3P5w9FHGFKtnZgW5Wy
	 +wtGMxX+mE5ly3b4unG96qPLwfY5OG9qqq9m2ZpNen7HgWbhZUUh/V220NFv27h0LS
	 k9UswnCKapcM9eSZmIy1+Pr8wLiSBNrsvRHTO2GImEislpRzFUVKDdDxDFN+Q2MS2h
	 uJPsUPDvOAvqAKtfIJPBDT6EGAKC2jTx5JyGUyV5Oh6+ylj2J8MCEJzX2zPDJYstZI
	 QrAiGLY8BuUBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57472C433FE
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 15:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166636445334.11677.9466124884394583894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb00429be0685478265f4116eaa644081ff003256a21d75a396896fbc0809bab
Date: Fri, 21 Oct 2022 15:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666364453
