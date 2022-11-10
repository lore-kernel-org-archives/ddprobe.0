Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBEC0185E
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 12:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EABBC433D6
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 12:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668081654;
	bh=19+avrK5xX/nPqMVGUSjYCOefh/C+91zt3dTwriU340=;
	h=To:Subject:From:Date:From;
	b=SMsCdfG2AH2IoAJspw+AGMsTVjKpsPpnjHuKF8eTFHRCTwxz/wekmm/Zx8+Ly9vmC
	 oWOACzMVUvfw2XMlZwquYQnEU5qpf8gHiQN6t+nDcHINJdEgAPLTQM27IqpfGE7acB
	 o2l6eAf0nOJZuq1w/rK11kANKh23ANxiodoVDDRWZQ66zlrzOA2MdivaqAlPIBV6b6
	 sLKLbY6PpXxiWwDepAqL6Gvur5+Ac/OMSAIvQbFMi5lMYBRIqcw7g8ngSs2tfK989R
	 PJrM2iuDecQ1/Rl0d2DHVJRQkPVZk14Wm20pqfGcxoP+960yqa5HXouJ5NjhgevvH5
	 kmHzmLvh6YFeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 551F7C4332F
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 12:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166808165434.7547.9336279854714411178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f37e19dd65914e386b83753946c2e21890eefdde073ddf4dc6e360d2f211b076
Date: Thu, 10 Nov 2022 12:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668081654
