Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D958179
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 00:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E83CBC433D2
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 00:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682640125;
	bh=YjD3xZiwFqQYGO1UliyRA3q1tajfFWAbBH3GnEQ+LJQ=;
	h=To:Subject:From:Date:From;
	b=NWvdZo6NXGGHPg4IzNYHk7b76EUgMunxQo66b1929PO2p0HlfD5m8dIiOpbJed2o4
	 Dn74eR1dAkUICk1BqrO3xl6XCLHEv028c8awsdrNaRyplQh39RrjrRQriz3cq48iH1
	 woQR6t7hUHqX9yBQJhzhtWu6hK7lTBfsWeHZh+IuNRK/UXO7OCl3IaBpO0Yxk9guBw
	 2gR6QcSmKv0pkgv0rrEeS+ROO1VTdbrGaD/cislEXIFjN5w0Rwg8Kcdr/vG0L6Knbu
	 CimhTPftBQ6w5twOlT16FcY+1OLpC8Qzk2sDBnPDMQ9ukL5lVYEBCZeUmX3l4cyA21
	 Odq5KD7XX51Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C984EC77B73
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 00:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168264012581.20885.16700136306037284302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 957f0928fa9301fd87449b3fde64b381fc1e3504371305081573c86e321a5625
Date: Fri, 28 Apr 2023 00:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682640125
