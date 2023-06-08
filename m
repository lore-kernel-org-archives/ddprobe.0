Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E7C51F187
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 19:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9916C433EF
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 19:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686254045;
	bh=frg49NjTTRgt/IDsbsES3kuah0GIk4P6FKiVtrWg5J8=;
	h=To:Subject:From:Date:From;
	b=NGxo0gxd9cBDRif9ZQTe2rm7kDdKRyqjEFCQSRrtAqF+yEcYiAyRZr21+ausuP9Ta
	 oqL12R7UV2o2XnK+zGb/M4Y9pmeDkDm158WCtj0OIW2hQFtMgIURZx1yzc4vIzQgaM
	 g9RPV+zIU7TVJuSyG6CsdeUzEH6E08tMcwdo/CGuyisQgFH0OabbZY+D9pbCw4hFcI
	 LbFtFJl03YTktGgS65qoNttamFUrW7YuJE/w/Ni+8ia6k4Nl/23/6FIM4vjLCiUArP
	 0v12fWFphN/UAVZE38wDWenBm/cTfhx+wJ4sfr0kPKXumNMtPTrUQqouqNPWtrcXX5
	 rZEMy1Mb7qZfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE759C7EE2E
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 19:54:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168625404577.28501.778584679583756798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da0eddb40716c576e03fbd81ac5f9daad89d2b0f8ca53f771b4fd6facdd9535a
Date: Thu, 08 Jun 2023 19:54:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686254045
