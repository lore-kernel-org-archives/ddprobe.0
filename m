Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D541C2F43
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 23:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81AB2C433EF
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 23:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671405087;
	bh=tae+FrB+7zw+PEvW+yE1/Py/d3yBZXuj4W793kcE+mo=;
	h=To:Subject:From:Date:From;
	b=PPt+xapFN8b3lplMRUBtP+bpLoDAk6TeUoMaiFC0o7FZ/ZNbZwdnaf8D/Fb+f0mZj
	 qU/F18/JT0hLqPTHM7tfP9yqYerA+JrGKCelFUvort/EPu/d8B0WRYUWurS2EVeFN0
	 z+MgJbvKWhddmx9y+kxRDQ2qHn97av+V6VBYPOY5oZc9tqnr9GO7PBnlh8Nsdr/a98
	 /ok1dW1WJPGLzSFU+QslohiNDTqTTj04/zG5Ouc4En7PjFbnI108Zhqac2RvS4RaoJ
	 4qW7xfs3WEjQn/3A0Dl4smmfpMxrs2up1/X/K1twHiSu9FL4yiAAHeu4JSEAIsZWDQ
	 XyICP78vOLEBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64952C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 23:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167140508739.9513.15491049491570769824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7324efb0ed7f8211593f931e54a2fb35ce06a680926be9ef147ffed3b400094
Date: Sun, 18 Dec 2022 23:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671405087
