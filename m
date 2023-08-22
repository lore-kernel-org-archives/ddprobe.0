Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D178F55
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 09:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C45C9C433C8
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 09:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692695648;
	bh=ty6ZgrHlN+PrkoQcqK7wWxj5pSx8P7ED/lJz/TLuxRw=;
	h=To:Subject:From:Date:From;
	b=nSBsqXxxuN3d5uDgRIQX0Trg+VcXmD7RYJdty5az5uzSzuPag9oudveRhQ3ZHQ04Q
	 TTlkBOMT6S33LDPttNSghWbhroKkmJmwYPyl3v4PksjNXuntQjL7RQsNc9TK4E07z4
	 1mKrrIn3aE0dI80U696voksoy4At4jngK9owPK0CNWwYgRDdu6jThXIUK0PT+BGQng
	 kfEjYNGFXBmqcWdztMhFTdFhLsQ2hxHWLQwAc9bisFBg0JPPdz4d02BsKGoWnbHsTI
	 cGj7TbxVkFlSM1m+c1scldvnxnE0J/aO2eiaBZ76muhq1fF1t1dJ0c/fO72NICIR6V
	 0VLnV89TDt65A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A58BCEE4993
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 09:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169269564867.5219.13409944066398383425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a2ed5c65db6d52462e2bddb731655036410a51074368cb0d2cdda26b069a945
Date: Tue, 22 Aug 2023 09:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692695648
