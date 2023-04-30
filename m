Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 792C75668
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 22:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 19B3EC433EF
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 22:18:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682893086;
	bh=f06MnkC6ysq+Tb1h2DmPzPgng1oOmo0MGkr1UrXf/R8=;
	h=To:Subject:From:Date:From;
	b=B9RLhBJ7y1gq3plWHArKGsjBnTSn5PB0AQElzYoKj9Z1bpl+Ih3wFxCQDfd1S2pWH
	 m6M4qOdyUOWM4OzT9ChBRV6cWS04fJFU3yO+c4f6yuyL4HT30jHHWb49Bh4c63yh8v
	 n2RkxMGMSdbPAGJ3PJ2hoc/WB/VGAMwscgJvAYiMUM0Omnv2Ew8o2FWZxLt8B7U4o0
	 CYZcilAnj9VFsDoQhcyzZknIITH5PZxfbZ3RCs6LV974BQOfP6psRreqcefE0u1M3C
	 DC5phw2jFkLTIdXdZKJB8QYu0bEt4ZNtECAqiuGZUGV4V86vLsFnqfB8UVP6QHdHnP
	 P8KQKJCYgMuHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2346C77B60
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 22:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168289308584.2417.5207837075060162016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9526950d3086b7932e20b134c2bd6eebced9ab17397a9a8abdd6a98b3bc6dca2
Date: Sun, 30 Apr 2023 22:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682893085
