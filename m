Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9249801
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 05:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 787B0C433F1
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 05:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673672487;
	bh=VNXH2v6a5o7SG6tKGwxwPtA04YqPZ73PejQPSWKBkgc=;
	h=To:Subject:From:Date:From;
	b=hVTZ2sxifPpEnS4PSxDvHMoTLrFfh7LiIL9b+D+Z0OyJcldms0sAMKiAfIniHlwmq
	 TVgt6/yL9oT7GuHekKZcTG3MD+0kQgb/QmcddxQe7lDLVKewoXxmsZ7RYbflVbX4fk
	 DVX3aBWiTRde5jJvplGB3xgrjnQCJbQhWRcDdwYNwz0bs4a2w3+tZrgP3b5/ambQGO
	 AOCTMO/4Rv13sFtTjsyK+VEC0onG1wgC+Fu/G+TpfaIpsPJ9ngpZ/wv5ijqvjEYVJ9
	 2Usrzpe2X15zsmMkrrnhTneSwK2b1kps5VDLPBEUS4RKmD1+v5kjgg7r1h0+WxcfNS
	 FhKl0pL6ARPpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61A75C3DA78
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 05:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167367248739.1476.5894528823909292956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93388ce18aea9af139f85d32f5447589cf2e81e0d6237d33a567c1ebe5b37fbc
Date: Sat, 14 Jan 2023 05:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673672487
