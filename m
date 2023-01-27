Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8CA5234
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 23:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D84F4C433D2
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 23:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674863585;
	bh=pfqXpV9EcXp0CxRvykccRevbgdDdFgYnkCuaGims28M=;
	h=To:Subject:From:Date:From;
	b=WB2aYrlevWn0Z7aJEYHHPqiOwcZ/pgnyK8bJCsPtnPNiAHz5/ffz+yc9do/cf91sH
	 nWcAZ9nSVPDUddJ2KM8su8OsxLf+upcHILT+sWFgRkY1dItOY5eMO9BaOSguyuATes
	 mJheoDv7izZZfOxQ+CoIqFVkLUCgyu2WltI41//qXCQBp8WkaW8JmoxT8L3L94ItPl
	 cNCMecy6N2CUZiVYkzh2aYH9z88zeuROdynm7YUPJo80GqnV1uyh5halgYRICIyFVj
	 k+IFYaJA62nBNChEthILCbEGAcrJTI1Rzkah5/tdiPmJqGjOJ3M/19wgdYMKzHwJBA
	 yrbLfI49SzdjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDA50C38142
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 23:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167486358575.9185.9849395775222544925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71024fd162e8a999af92e011c5dc814afa553dd3bf875ed11904b50cec57a2fc
Date: Fri, 27 Jan 2023 23:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674863585
