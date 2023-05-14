Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367141117
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 12:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF3C4C433EF
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 12:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684067945;
	bh=4ahZ6N/MV1Ktw0BEaxwEYmgvBv7EbT9LyJ3RovCmL7k=;
	h=To:Subject:From:Date:From;
	b=SFmvQyz42GRtI/PKiREdNaU8bplWX/j+uq25wgb0/eljylkLfKnpEmKEELiVknWVd
	 20cW7jldTObKeFIjkxkagyblfmQrztl3wl5Qz1sYvZWojhAKb1P2d/K5DAHsHAIuqd
	 zxL8wvek6BKxzJWUwCcury1jIsh/rGxNCczHuC0fTWCfEbBVvYISuFljiC3OQTxA+R
	 yv0lytS2aF92MVWa9WKaUBvd/h4eRzAG3u2zkwJb6zytkxxibTaOC4jlN1YtYEKQES
	 lzQxO/TkiW/85zdbps2oVs5wy6/M08FF6JAjq3FQp+hhCf35Dvez7OlvP99oFaq/On
	 zl0/sl/AczJmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC018C77B7D
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 12:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168406794576.24420.7250356663899722023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 594073650630a940d4bea5cf466fe541d96bbff05c40b23d37ac0942f51bb427
Date: Sun, 14 May 2023 12:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684067945
