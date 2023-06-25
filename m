Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A01277464
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 19:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7678C433C8
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 19:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687721588;
	bh=0riklM3fhrGbZTvr4zPj3LY7W49lTa4Uhy7r3+8MjbQ=;
	h=To:Subject:From:Date:From;
	b=VbSsHWoLN6ZrZRRGOIVMlqtotlqPzWbctSr4QlYc9Z1WBZ5rz7wQC4Inl7gpupXbK
	 e2lxo7h/2gTprTVyzJVqW8dyEUvhrGmwswyXbiA6YC7/p0NBfs6YierIVVIbw/t61u
	 Ky11IBR1kJJXNIJdlnZEbqDNFoSW32CWdlSnJzrTo2jtFVUWb8oRKgII2jDFuxx+QP
	 d7fu/VtWniPgv63rOtOc9ptXwJlQSaP7ScqNFYKqu4j9/l0iFNA8AekFOFpsoj5AMP
	 YhGLVKBRH53+23bi9fQOgUQWMeeySnaq/CAXWsDKMnB7T90T4ZVlAJvi7m9bhEzDta
	 7vAEG1cYFSipg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8A60EB64DC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 19:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168772158874.15216.1368690411382080365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee6cd3c5ca3e43f1ce1d7b251fab02bc6f9f4310f76332d12e77d8479da27bdb
Date: Sun, 25 Jun 2023 19:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687721588
