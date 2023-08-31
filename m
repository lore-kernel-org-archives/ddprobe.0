Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73AD918C26
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 20:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB271C433C8
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 20:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693513448;
	bh=DPkVbeVHP7KDXvEyfGDZyDvWwuiVLQmI5mDGiVSNsGU=;
	h=To:Subject:From:Date:From;
	b=oZcvcx8Lfi01JqfOVubd3VZvQPMXaL7qcA6H8WvD69GY8Sw5tpXeCYyZpP/f1dkSl
	 OaXetR7lb/G2df7B5Xhcrx+pt3amSvO6s4YZbtwds7C1sJNA+aLvCRsOvmjX6ffc7q
	 tWpgtefs9+D7iiRLZVujgn3I57i6sHyWYf2Vjf1tlvsQ76NyI3AUeJiV1fu0gGeju4
	 lgl8ByLgmUSk2j/pSc8xkYtOA6yNscnDrqXaiu26EkcjRzOtGrkZJqEmpal1DelX5K
	 KfG3IbEJLHitYt9KjB9DBnKnsd8lrLl1zUHU6alK4Hwqto8h9GeMgJNQr3AXUkMbTO
	 oRnb8UlZhQkIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFF40C83F2F
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 20:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169351344877.26705.17443227588858000317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62ab85b6ba7657c0e277f6021d9b05091744488ada8708edfad7c47a20374695
Date: Thu, 31 Aug 2023 20:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693513448
