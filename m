Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4D273C13
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 17:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74144C433C1
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 17:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665766853;
	bh=+GVHgY7sPnbVQTBMQexygR6p0YF05v2ra2my8ZyY1gE=;
	h=To:Subject:From:Date:From;
	b=nBfX/vT8aCDuL1WqVTX56UvN1ScsUD5lkafpPDVfva4zkarjbensvzi+YV+qhJD9+
	 4RETgQdiG/2QvEaVStzbr8zLA2uKdav6xuu3kN7Iw9EqbXu8unmaUtCyJR/uRgT8zX
	 dqCOa6S2HXlfb7yh1Dco/9v0MmWy8/yRwGDcIlgrbzP1AtKgFTklx5LbHSbHNYiCQ0
	 /YAXUHDebqjmIcd5jPXnLQT73heZuXce+W5aWA8dpu2SBoJ0iAioKZKae4xzmqmBi7
	 yx62HWunlkj8D+n0/spPoszz9zGCEI8zrwqgULkFEYYbeZqUn9gCRP3PFVANFWYJ/x
	 HMsytmThVT/jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53FE5C4332F
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 17:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166576685333.22099.7634299105068423106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b239fd7a1e1db2f5f752252d0c7042b69742b2e3044c2788eb73c391f321a87
Date: Fri, 14 Oct 2022 17:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665766853
