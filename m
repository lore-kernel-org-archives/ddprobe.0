Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B407AA5E
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 10:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68DF9C433C1
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 10:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664447453;
	bh=T48PBkO8XVJ/Tcys4ELwp2yqcaLEt2pe/tm2PVxAPU8=;
	h=To:Subject:From:Date:From;
	b=KzURGhB0FfzqoRN05TrwuVkk/sQd6P9aP5Ko1MBj/lIdAvH0zJbBhVvPylMaZF1Bn
	 LdW3zjj3evtjb0ezKdtDPAcb9xCBtTvG5okPAE9CTCkpwfI/2QzaeDr8ojnm3axkAQ
	 Lx+ZMvGd5vQxbaLlii79CEeZTb7dKfA3mq8aV6ZKatcFTY/mOqsYD6BrOeBWeKPuVS
	 Ws0eRDaURgqHnAz61rMzn6mpbprSWHxjZPhSLKB7L/WRdEYTyFRsrTINrEfdhjLw6J
	 eWqiAi9e3NX5lhVkv/IaDVEttZaO4bcnbWcCLjygzSws6iPsvmCOBZN1j+JBosEihI
	 6j5p93rXbBCLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5273CC433F5
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 10:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166444745333.32604.6284205149428779400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c097032a6ceeb048f7306483d34185450345a43a9962511be74df484aa74d5aa
Date: Thu, 29 Sep 2022 10:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664447453
