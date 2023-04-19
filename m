Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E12BC941
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 18:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01BAAC433D2
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 18:25:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681928706;
	bh=uqJ/Esi3Q4oGWfgTZgm/BwJXaxXnr3z5hbZIsphG7vU=;
	h=To:Subject:From:Date:From;
	b=suBNKg5edvZM7NxOPh7OTvYEzgqYh5h9kfiApT0DzwtfGDz7otz+vBaLeWMggt9jS
	 1QCXAciY5Y9IddoRmJchLIuPwFpSA24s8pPtvUM4XynYgPTHcpv9h/7EHmaEDM2g/a
	 D+mCp75YyfqGBoTu+Do6YFEZYWFwaCyxritPRM3h614Ej0gHf8WEZF9RySG7jHLzeK
	 Y7hrWxOW1RX66lm15+6PV1xfaJHSNgxWbbWNFEFHM9h/S/dWf2CbjXVLbjIEK3i7LQ
	 jNXQI13m7TDutkJvHsGZSxKbpLwq0mKY4mvxDPtvFiF9gp5mRvQCmVqpTTm1IG8hu7
	 zBWVeOC6okYGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8B07C77B73
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 18:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168192870587.488.13165702520139565674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb261252115e6242f0d6417e41662ff2a3762fb52e6e3d622c2eab7b7a1dee95
Date: Wed, 19 Apr 2023 18:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681928705
