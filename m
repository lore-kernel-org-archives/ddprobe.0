Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 123D110792
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 21:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B114CC433EF
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 21:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672954287;
	bh=jR70qMqyMoxtjktDwlKY335/tun4dGzORdVA2pWFsIw=;
	h=To:Subject:From:Date:From;
	b=ctU5rj/EwhEmdvYSJ5Fi1UUgmNYUbVgu6ALqntjpn/rVOa5G+s62axXlXNwIPCJY3
	 FMgkNOTBX65LRuRM/XhVTGgm9YnD6LtMxUT5KZ/OW0Sh2u55fnvpA/sOQ3duXpckxM
	 bdW7iYYXrsczIFzxBVf0cw9Y+omcaeOUgGZ63qEh7DK+7AQosRHk5Dik92N3F3oz4Z
	 G/24ChmH2tgroRtgq0fYZU68FwnYziRbTu2admFKWi8Cvu2RRTVfLwf0MYuc5PNcAd
	 zPMKSCk/1GU8uX4uPPmBLmpbHicoK0Skb9anNlrP093uol0mCZjzqEBfF5xTd5Tvt4
	 8fWgneagea9lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6A5C3DA7A
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 21:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167295428756.7530.8596892109363647015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5241da4100b11ff543c9ad787baf9bf5619c32397a5acee998cf3906d4426f78
Date: Thu, 05 Jan 2023 21:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672954287
