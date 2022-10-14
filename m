Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D700A370
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 00:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B227C43470
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 00:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665708653;
	bh=6sbqJKUbkNGSHw39q0bEODX1OjU5guPPws/V72QUzTc=;
	h=To:Subject:From:Date:From;
	b=oerL/3SYAp+yY/rQsRBPATNebJJfJvg9/XcWbQwrDP2UhHZRb763oK+OIw2/+WQ0O
	 TUPJbDBfmBkEVtQuUVTbR1tdz0BFPg3ALEF666P8NqbfSPwKMQOWnKGPg7si34Cz03
	 m+gTMAv6BfubWlQbW7o/dVMjIQGUrZG0Ibop4INGYUODVqvcW2kBjGzS4o3I5Hnw0U
	 bTluz2rZbOonFzu9JtAjuMxvnH1mBTb1ZWgym8O6DeqtK9kQTliYsJ+gfHTK3q1eVI
	 LKtR2EoRiYkwCV70ZAr9y3E0nY6FbDIyWlViupJw4hle+i/M7EzzOhhmg+wgvYiDZ8
	 FDDYLE/VWwuCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58686C4332F
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 00:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166570865332.21028.10068185882433573016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23bf887bccc9b61cbd9778c6d4eefdb4229a927c9842fdce99133f776b93cec1
Date: Fri, 14 Oct 2022 00:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665708653
