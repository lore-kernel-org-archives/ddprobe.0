Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE625186A
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 11:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BE8CC433D7
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 11:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666870254;
	bh=c3eLZ6eQiT2w2OwD/rGtlLpnvEy+OYULMRJxDzd7OcY=;
	h=To:Subject:From:Date:From;
	b=e40iSlLa8ppkUH22IqnHX1Ni0QAbVtRvPNE4VZ4FPqt1viTp0IwwLnCVgb5/HMyGz
	 DHIx+sLfd27cl4nZIrxs4mOIv4RHVl3bT2Uon8xRQeboEDuzSbj4dlXATQuk5GyRZB
	 ggkWjKDF6ui3e+/60Mdu8UGhO8xSNNvyts6rCCoZQvDsI4Fpyfrh2FS8d378tPgW4Z
	 tAiPe/ApULMHUzLzWv/1QH4Z2gvqhvC2RtUpLBFVdkBtXXToVnMQ+4lQXJ7FYSU6oa
	 l0r8fQjl0XXQM7f9WbobinWW6D15oQA1ZjofuyaGpUyOBNKQftXMtCb3ASzKhOkR/s
	 Vdr4Ai5lkGTSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53417ECAAA1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 11:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166687025433.7698.11839986241646481573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6d4a3a8a62dea93e531bf5709cd61a0f88c63981945047c224f23d77dd98e98
Date: Thu, 27 Oct 2022 11:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666870254
