Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3342C15BE
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 02:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDA1BC433D2
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 02:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675652165;
	bh=y1Ij5Pwo0nqcPG8ZUCJR2bQzLxs4ClpiILbwX87Di5c=;
	h=To:Subject:From:Date:From;
	b=IVgf7uN7+1ipeBm9VX71O5dN0LrCeZxjeU+geHg3svesRe3j7nfdArBXxeXZquBwJ
	 zWepntUwLbVCUoZNXyevIxOtXzoHu9YbeFmfgns5ZQB4PUCjqhDGon/CZ3m3GMTu8d
	 9uDFNVH3ldKeVfd2zHD4xemwrE/FhCp204SV+Kq2AAATi1MzU/oHBOHe8kMeMhYakv
	 Q0LTYKBgsowtV3b77BIcs6Sja/t8Ai7HkQNy000I5gmydOglPpbKFWzy3cWM4Gf4Tw
	 qDT5nlxbbRDWdz95Ko2w3WovYRtsGN6X6cT0shVGeuGby05ID4UDn4i4kuW8zbIiA+
	 tcYPkkt9yV+1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2565C636CC
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 02:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167565216572.1601.15363701018946822497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d48366836d8fb2208c9ac95fec0bd23112a67f18bcb7baacea611fc5b78ae404
Date: Mon, 06 Feb 2023 02:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675652165
