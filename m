Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67CE828F3
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 17:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 13505C433EF
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 17:27:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680629226;
	bh=/SWwQqFjgDN3afkbTts8NE1fHkW/sE+uOp2RgHK8Jnw=;
	h=To:Subject:From:Date:From;
	b=ecxRUC3Wp4KJtkHvB1TYg0xlxoZeqBmay3RJi1pwKeDhIYrOC/1V7m7NRkBdH+q0r
	 dkp1gkHS21govXCD3RTFIgH95jZbm8YegOSHjWa8Yt6alPLz2PEMCGx8H1oZxuaTLA
	 MhvioYeO8edN7zRt+4/q7Pani6ZWK8SRnJAlImyYXWpq4KoZarBa1yT/CZiZOQI2Qk
	 ZHFzTnmthQlglzrkmFaQY2kf/7nnQLXDLLNZRxsJRTvnCyRJ5iCQl3bt2tCQhT8SK5
	 WgpRcc1Mc3YMVfqUoBOuFvdrx23kmP0hBP1KTolrXZJPcfO7Uw6cO8U20dWH03Ntcv
	 0CpQ1lbUS0SiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA03DC761A6
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 17:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168062922581.20537.11056670709199013078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc1c3fc5812206412ba9c494987f20b111a1e55e7cb1d61b2e4ca673e2aea970
Date: Tue, 04 Apr 2023 17:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680629225
