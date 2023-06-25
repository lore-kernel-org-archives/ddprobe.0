Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C8E4EA4
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 18:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D198DC433C8
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 18:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687717388;
	bh=FGkB03504up2kforNvaiqf49YSAO2UZrwRDxPDcIOhE=;
	h=To:Subject:From:Date:From;
	b=LgZGLvXSa1fMMaUDxs8fjptCSgxYpkeaJETG7nzzx1afGaUDecXPfZDT0N59i46L/
	 63YAsKTSZOFWL11IOwDZYwIq0f/lUqi+5vMbiPkYyNBSvKYJcfgxMP5sIzusV5ToFd
	 gnnR7I9NuMWmp4qO+CWn15Mm2tIuPwI5/UdMVMuhhwmgngxCZBth/qPRSzA5EFzHNM
	 /2GtAu8Ax9L/mhILPWRM1sKO0RLZes0+18h/mfkI/nkP7VwfDReFFxdu037PrdpjWJ
	 CDkPLOEXphZEtSxH1unqfPGFYpn2r+DjbLfEYHCWIDErGh1g1NDnzDVGUIgN5fmuuZ
	 jTiIOoOQcEAKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2554EB64DC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 18:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168771738869.6014.4778734924549387905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b11577b1226a3e781fa2bdfffc65e1ad0409a1668602e977ae522f50cdd32fd0
Date: Sun, 25 Jun 2023 18:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687717388
