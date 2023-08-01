Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 532157E
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 00:32:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0B94C433C8
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 00:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690849928;
	bh=MahUe3WptDR5jW2nUrJK9wvCPkr+tBWuEIHBnFDdoXQ=;
	h=To:Subject:From:Date:From;
	b=JtLWg/c7rdgdxpkxSsfqOOk5of7hsG20XPLO0XzcgQnsMtQUQJkpKEgYzEJNIprQE
	 GvnyMWvWswXcD0F6iSMqHo/8plocL7KcGnkQqSDNvP72bbBvIJCdkUsL/h2Gqmm9Fs
	 E9+RFHGREZ2q35cwANd/zJaFnKi7wLHvghe4XqkP+9WFd9itjXco2AVsE5bN5t49CP
	 vFoTImEOZOIyTSH6uYecs8h0TSzO7Xi+xx0mztfKbjjMC7p6RDVOPidqYP6n2uRThP
	 l/qfdN7aNRghJFagUlS4Ef/XkwVfpTNmQxgN76hoCxUrAB9SAeXO6DhR8Q4Xu6Lc5j
	 mabBMyS/USGJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5F45C001DE
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 00:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169084992867.10849.18322262659276600978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4389cbe79195bdd2135bd9973fe0c684dc6f1317b5af84009c9e98e4d14267df
Date: Tue, 01 Aug 2023 00:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690849928
