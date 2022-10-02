Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDC5E2560
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 10:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D84FC433C1
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664706053;
	bh=QI+GWnViF9nbQMi2tjtZoRBSn07nQNijaKBoS/Qe+XM=;
	h=To:Subject:From:Date:From;
	b=I40HSJEZfl5a3yvNtBiAScQyWrAU84ZOYFdl3xMR//sUewYvzedK3K9D/N9nw4tCq
	 tZC+JvMB9wzc+oNsmOf7Sz4hMGF/J6C9kmlFxGWoymxNmf+XsD7jtUhR2FfKXiY5DN
	 syOfAwS61ouiLjQq1w1s/ZJ38lcRLVNPMZ1Am3PoeiEC6BftCd94tRje0AppYET2bC
	 U1vKOE8/+mzH0ZB0aqpqSr4gpnfCJJgXy0L54eO07QZCVlaVXs1zzMWPS29fJpl8pD
	 P7UoIKe0hI+X+a8KFfuzeyRBCNCUEvg9zGcsDjJtTQaSsod9AIhYNJzxp8Q/BFSzMu
	 rAn44mBJ6jxsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 546E8C433FE
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 10:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166470605333.3201.8777615203945537694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de1aed9ffba4928dfa3dffbf05433447332a561d20de0f5ed691b66929c2bc0f
Date: Sun, 02 Oct 2022 10:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664706053
