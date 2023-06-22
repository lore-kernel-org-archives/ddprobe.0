Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47C791F923
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 18:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9F3EC433C8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 18:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687459988;
	bh=MPfvxsgw0PPArDqjATGATPkZZUeZIBg7o/POgoz47z4=;
	h=To:Subject:From:Date:From;
	b=tUg/x+6jrFX+s83/6iOdjNy9acVpbeXnVKQ3LJlySHhX5Y214VGrMY+g4iHPY8koH
	 8qiGOazUlse2qPg3tSaKhllnabECX7KSF044lvr6GExMQHTv7GXoO3SpRlLMuUohSd
	 HvJnlP/Nh7bGkziRPxITutjTBDoPIwo+hkN1pPdfzZCQf3xDom8Hj9IFUueSq3/2jN
	 jbqTfKMa1cEOHFQ2oV16xy9gbmgp6g1+iiR/7BsNXW8JAKDVxTUjylPRJFz4yF444X
	 jUH15cYCcrSctGu2B51cAXxJ3rMMVuM8tABptx7Rjc3EtgZb4sXd1p7nP6HQhdFHQl
	 WcioxSOUij+Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6BBEB64D8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 18:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168745998869.2488.17369914565510992765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdfd61e824579b614765b83eb9f31e540cc31cf804075af5dde6058e46826027
Date: Thu, 22 Jun 2023 18:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687459988
