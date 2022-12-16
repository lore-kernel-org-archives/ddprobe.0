Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9F29371
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 05:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88E58C433EF
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 05:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671166887;
	bh=Kf1GkZTTDoqOSb0nWHTiyJ8V9jXniK17caxVNsCqQLs=;
	h=To:Subject:From:Date:From;
	b=DDw2iIIvsWhv4TMpwQ7diu9nUitbXZ9Idbrpwxlu75of9Gwny7v/XJb8t+T5uGbwY
	 met1MVp7rSiJAVIMBxRvAEpvkYXpH/Ms+2HLVpNRucJOSM120kVrTx1jpZEiC31k+p
	 VRSn3pRnBqoPbo9A3HLv6BK/+GXRYSZPGxpS/JSyuOpaFDbiv+pWAvZbrEZnsLo3JG
	 Vpg7ouSMJFEssjE3f7ZsAgkBVoScA2EEwUjIOUzfUqGsTRJ4QXwFXnHTb2fWLkHYa0
	 MvEu3IeEUdvXcQacVgffJIO456sIfamKyoMYxCI77o71fJO94iZsBxXxrEHZEJ3msZ
	 g1QwYKYW2DVPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D668C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 05:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167116688740.23237.460305993739051744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0d5bc709d424e79d66d69b894c95c7e5b502aaf73557fda054a7505920336cd
Date: Fri, 16 Dec 2022 05:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671166887
