Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D279BBA2E
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 22:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 845F2C433EF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 22:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672872087;
	bh=uJ4O5vzME3F1rAyBJWtMso6jHN46V4bM548hjxUa27E=;
	h=To:Subject:From:Date:From;
	b=oZvRTepygPUyuaUP4siLiWIcpu3xZzBvMI7Vz8lWvVQN+COIIye543GKzML5VTSI6
	 EW1JUOjsYEcxQFNOZNl6UZ+TdKRAX6CYRR8L20W3UzJOEz6Xmi0o7RYsmsWvRGFuqm
	 P0KwZA9dee7/DoSQlXinA8wP+/Reyta9r4A1FK7gUL2pC90RAzVciB61h+rqs8iO2n
	 A/UbzFVxYi0qClgjFrhI2xIn41Hds0xmqtNb8H/s3472zxHCr93kAWDhVwLAt1bd0c
	 aNI7Ew2+TK/09v4YUoTK4G2I5ZFUhlpNye8A2stao7Ka7nuTKSm6/jY8T5w99BPF2b
	 wSHdD3mcRJN2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64221C53210
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 22:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167287208740.23877.17569795717239891778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4fadbc81df6911f96068fa6094570a74311adcc56b6fe2103a587927ccdcac9
Date: Wed, 04 Jan 2023 22:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672872087
