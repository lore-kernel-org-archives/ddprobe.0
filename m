Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC0C6FA1
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 15:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4705C433EF
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 15:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680535565;
	bh=d+LT3PPyZRaLDt8N71jP2ewblkCboMsLsu+HE82fjzo=;
	h=To:Subject:From:Date:From;
	b=fUXdpDWdBs3L7ByAmhtvQtoj3adN/6Y0M7zd5S7076X2XXgJG7yJDVhjKAWtMcd04
	 JECtDt3d3J6/7hU3aO/eEX/cpkc70bbt+4RBLXD7rddFH5Oaoh8XMxCgA9EbGMaUl0
	 WQ0ursBX8evTqEo/wsbcgycdbo4TRFkg5zhe0Y2TO1TYkpNhrwQf0bepD2b7h6OLvi
	 aa8evGIOQ9R9+fyUd+IyWUTP/kSsUtcE9lubB6l41AOXCsL3Y0AIt8rLKS2w3yTZ73
	 z6J4eeS6Q+F80MoJSxkOHe+2IqBh6s0Jxp6SOX1AgBxWa0opAp5ZL3LAZ2q7UzeHx4
	 iTrLNwAJLtcuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7A44C76196
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 15:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168053556574.26252.6210156888536332887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 024253b185426963ff0128fc08a653e22cf6ffb0127428c099070980af6b2562
Date: Mon, 03 Apr 2023 15:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680535565
