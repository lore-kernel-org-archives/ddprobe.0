Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D722F622
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 05:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AB73C433D6
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662700853;
	bh=FvTzLd18et4fg/vuQdYt/XMzvbbijqOFteh3mmVrjpQ=;
	h=To:Subject:From:Date:From;
	b=hlf4I+JA9xovJRc3ElX7GCyn9Gyp/YV6ZCtMjYd5iOunGEYprkIvTvPMKH0Iig6+m
	 PXfsnAGVRcAPOmgGpJbGCqVSrATYrhB2cUTGM/lBQ0zv0b7GVwBgTJRL2A/6gv/aiY
	 EBb/R+WrLbIEW/0Pi1Xu+fyAqVsOV+qdyFODsWzndPte+pFp2SgfRRFyrMEYWkOsJ/
	 qOdjasRWtHHzhuLZDHDmMCGnEuoFfM3XT/HZNSX+kO1fUAfXj6a0jZpdVJMcuIusI/
	 aAB1aSTXjb5mhYJVjumHic/w4Dma4RqXQF331cmtSA6Z+y4m1P4wFeOO7nqiyxnpoU
	 ShOkAaY1paisA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F7DEECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 05:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166270085338.10031.12047028963233689208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e9cbbafb5338c5ecfcfbbdc6442fc09020d1724eb40cfb13620199ad634a864
Date: Fri, 09 Sep 2022 05:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662700853
