Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC3A41110
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 20:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74DCAC433C1
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 20:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668457854;
	bh=BfNlpXXza/hbnJ2F2mV+0wMa5oyR9j6gkpOLyFiWm7o=;
	h=To:Subject:From:Date:From;
	b=piynDiao1qeQyl1+A/D2NqPe0rEbRd/g29dbpp5yu/HswyLvt3YzMsuRIHTzoKVkM
	 Cjczm1qs0CrKG1hPN0w//hRwDM4ZXSOPFAA8FzDM4qrEhfb+//qFNxhCWob/un6AB7
	 CUoV5sEJhAQhxLNKGQFB/cx50Q7fCyg7S1SrXG6/KR6avUcM07SgHsvQPx3DZsm7P6
	 7cAboqXQaCMz5bnCOekY8w7GYiff6L4s0n3SSk3sAF4u4ieoHN0/mBYb2f4L0WAv+l
	 LrLOv5aI/dXTwMsZO8pnE+009qmPHPH/8g4Ub6JB4gNpSP9VwwYK+VfyUED/OqmifS
	 RV6yiK0S6qBrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54A9CC4332F
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 20:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166845785433.18821.14940931889123828092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a214eb4d334375cf0e668814e21323e681729f38c4d3b04af2859a3ba7de4557
Date: Mon, 14 Nov 2022 20:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668457854
