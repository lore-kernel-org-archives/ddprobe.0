Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B78E839B
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 19:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 61473C433C1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 19:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663442453;
	bh=H8PDR44EhmLzjft7I5dIWFJXytmzffj8PNNmTU3X33w=;
	h=To:Subject:From:Date:From;
	b=Iq1LU42qmYdV5O5SampdPvff2r30Eau48HKcnFmn0SNeyVCEKDLa5uUQi0n0BGusX
	 vf7UN0n6TemX3eG4ju848W4+fwslKwGrvjhe8oZ+7zHBJWPivHLwfrde1y+k/DCvV8
	 ID11EJFZIdvRokc0VQ1Tx0KKW3zuT47CWDlqRUXBO25vzGAkps5J5XQuuydTTs25R/
	 oRVcGLUrHT/VZl4H2N7QSoFJz/7c7+SrAiLN68cp/b2yqhBm1E08625pj++jgRtGbA
	 wJtq7+QUa7i1wCBFLJzQaAj4ugWwrk+siv82DzdCM1I6l2PpuMbv8qFK2AHdTktQ0i
	 lsgbiEnxOWO+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F5EFECAAA1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 19:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166344245331.20773.5037136858921253874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab6437f8a1c3fc5fc58b0b52b10ab8079263e13ac91bd21e8d41e5f04e52f577
Date: Sat, 17 Sep 2022 19:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663442453
