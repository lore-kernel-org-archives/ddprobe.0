Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B37EE3D62
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 20:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E61BC433D7
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665520853;
	bh=oaJIey3PSjSDwLHfnF5eAwz5jg++Xz5vYSCy4VJuX4Q=;
	h=To:Subject:From:Date:From;
	b=EJwZPRwIz/VofAfsbW2t4FfUCvMABqvmBbKqF9iijOlgZK5WJl8cMgGWwYecHQNNq
	 khOs0+LkuQ+1HjhCsa59HQCdjnV6xXW+ukxfBVbSPB8PTIgraEqSWF/Ha9PNBinw82
	 eK8AStiWLuPYDTITDPjm3rW6MQpacGSJ06vAMC+BtLxZOopmm5yWGumCb7DRA6gqnk
	 7eY+RffZ6EbFURHG1oN8NT4Qn1aE8Ctg/5FUq/jjoheenpvB9meSepo3CPOjPfbGvy
	 be5z2fXmjdLO6SLbRytugisf00VDhVKurFwKwZ8d5WraygTiR1jKwSNJ8qoGggIsdD
	 obNrUB3MIEgPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 586AEC433F5
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 20:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166552085335.12572.7924635129333620382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a45c466924c4946c298ff88ce1929ae8f253cceacd1d5e97e6a4d0755983f5c2
Date: Tue, 11 Oct 2022 20:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665520853
