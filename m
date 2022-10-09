Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B782F1FAB
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 10:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E12BC433D6
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 10:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665309653;
	bh=GhjcLlvWvZDozOA2OhRgrxTdmVQ6BZU0wOZlr9SvJeA=;
	h=To:Subject:From:Date:From;
	b=UNfQATpQKxLqvhtQBOg1+khWZ8Xd0GjdQ80gtfzve9wXNxnBLA7BMpNypr4sc6cYU
	 7AF6PFhjYng184uChMzEPe3m3R7WxiXX+UTX3Ow5HDw0l3fWiLj2R2jFzbjkRGDZqF
	 a08ZJCxT8hsR7gJjQsXp7SJeoN8nAvJL3h9+KCz0qDcg8DFsz+zA30lgdfYQJ876Xw
	 pnTNvUMAXMNTwdZrZApU0l+RyUWAqdTg10kh+ZfWDecqKKiciBr9N0Fg8QK8ycUBUS
	 vZNc1lLd7ARP0nnrfEBxqSUtJtQ8xMA37857pGO8iwb7kWAbNiPlg/6OQhSguyKNN5
	 1sjvmy4ZYq9yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53C48C4332F
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 10:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166530965333.17706.18022084448347232920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c405e81558514660c32cf746455780df01694dbec4fb98bd971f1625f20262f3
Date: Sun, 09 Oct 2022 10:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665309653
