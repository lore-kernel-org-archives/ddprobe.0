Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 665F1DF59
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 12:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB2F8C433C7
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 12:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694693648;
	bh=06O+RO5MslXnvufjnVbGDA2E9H6+s8YzGUmlyVLU9os=;
	h=To:Subject:From:Date:From;
	b=tAJUfZRpZ4qJPI2q3eNPmIitUuenGN0SX9XWBS6Qq5yXCF3zgknEaL3ZkOYn0Vsub
	 +xGT1F1akGqDiMT6qT9auMVaN532R4f/gix6wT2llc7nEHbnCzc4gDZGQVI7S+/Ic+
	 de3DQ/kut4TTnKnDurcNNCwjKUMlOOyjz4hpv58sdgAPDMfHsjija0eka8jpoiAZGF
	 WP/Nk7dpPGOcp4SiOzr3Kg2PQcwqkVwy4NE+p/JPNHpRfetfqYng1/jxcK7NVquqG4
	 QG883HYzVZ9ic4fzMmFB/GBMoosRJCcWWhjSuRifv3ZVi99HLU3dqUSaRme/oVSk1L
	 SYNsZZPVE4GnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7F6CEDE9B5
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 12:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169469364874.25922.14623643732138398752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e4f0903411a1a87fe8aa461939eab4e51857f08bfc3180745d5895434cbfdcc
Date: Thu, 14 Sep 2023 12:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694693648
