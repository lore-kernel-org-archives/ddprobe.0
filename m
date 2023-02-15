Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476DF3C1E
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 09:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1D8EC433EF
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 09:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676453825;
	bh=vwuF6CpL9+jsTAi3NVSGPZxQgwp+JaetVm5FCoQyiIo=;
	h=To:Subject:From:Date:From;
	b=ULm+fiUQyePHB0WGLEHmcSSF/lp/22GI7zwXGwKgy32TT7TpVy6FoLjp9SJNdEUI1
	 11sZBVFeL/IUxZX2QqMIdihtql6PGBgCYhdneIGWYk+XnHJaeTUWjHew/ZnZ1xyErw
	 qOvo8KT2wLHE2RB/F8e13gtlmVQp5xtgT6nDubMpdl03L1qwHlPqqgDgvkg1/OwV10
	 Diairi3Wge+FtHE7Osy2v1p30zf6M3BWPr13Zsdh6vnBTsFlYeInp9Q3H2n+u5yHnf
	 H9ihIeH4ViL13XLX7WB8qJ2EoF0Q8ajAU/p/RYcCSjxVj0BWU4aAks/y1yTTKpv/do
	 6kHqKUbupvtQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD412C636D4
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 09:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167645382576.32405.14279214539770219000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38e0babcd1cef8770d6f4a9cd6b0e3731502d6e41a9784234331d42ce80baea1
Date: Wed, 15 Feb 2023 09:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676453825
