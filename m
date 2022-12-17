Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE77636B
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 12:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A260AC433EF
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 12:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671280287;
	bh=xy5sUIjj1Q044OXyu8yNjV/Ng42cQEMtveiSCA7m3Ps=;
	h=To:Subject:From:Date:From;
	b=B8Xjj5ZBbEdFVj9sEyn8SyORaZaUZiq2B1F0EvQOL0XQffe2U6fYGVcrRTcgJ+qMg
	 8K/+MlkvZ5NBlVLEuKG6fAX/ctmRvGaKbxzyXcpGNA23Tftu/ae0dbrf9qQNFcWRIa
	 ItWG7WY2TB9Raxdt8Je4p2HKqq5cZklhqYPMl8fGpJylE4iiyS9oLD/2pDdFOCDOZt
	 gyjHWy4je+Y5lhb5IkDJxIAwUORYvdVsPoHmhfSVNY9YdK2gzEBN3os/P0aH+WFCOv
	 2H28GmGDRaM2/H+SRNRWoZAbpxTuLZeoQl5BtGvEbXGXzyBsXUAog7U7HySHNEoZ+e
	 EXkNfG8/XXiXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 84D67C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 12:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167128028752.19978.2830710785919878785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cd892ee64dc49dd2a8a81dbfa1a473957af04d4c70995dcf830db532a445865
Date: Sat, 17 Dec 2022 12:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671280287
