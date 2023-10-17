Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E6F42F501
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 21:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UGc2zW1F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDA18C433C8
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 21:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697578628;
	bh=ybK2bDZi3oHLfBpdkgo0iWrl0op9n5Uv43U0D/Mel4c=;
	h=To:Subject:From:Date:From;
	b=UGc2zW1FU+HTZiFrB4/d4YHZSn2YQkNr0xZ5rjIru5PjEEldVRos13enbRNRmDzP9
	 VafV/6ZNUpbNnApcluIm0v2XhFNggp6W4EauykUwa9Qlo+wQ4Verr+SBefBrOjEyYG
	 tPO3kjTCAg18nwI+tBiJSqpAa7K3FFfAR94sykWEh8LTKBLF4qi1m0f0QpPe8dqwJE
	 TZoT85zv2p5VlWJNMWBBpBhfYLsRZSDLp/OCoih9thDNCuTMl7bEnqkaksDhW1I1Op
	 tkIszCe4RavY0qQdVG1055nYfDa7SwgzpW5N+9fvvl8wiDiPA3HpZBKzDDRp0+eA1s
	 /F4y2taofz0QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF38CDB474
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 21:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169757862870.29154.12583214671136571099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 044641015ea8f04074a92cb472c7451f3728647f19d42501a0a1aa8632ca2932
Date: Tue, 17 Oct 2023 21:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697578628
