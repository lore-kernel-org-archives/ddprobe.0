Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7E967FC
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 08:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73442C433D6
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 08:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662798653;
	bh=D+f3joAjByJzh9vDvaPf+gsPZSt9KzAUKILCAor09VQ=;
	h=To:Subject:From:Date:From;
	b=K4VN0PmL6WLwyQQt4qai7KheyOzVMyKnfTc64vQ5/i0ARl3vKgIcmaQHdgM2yP59i
	 l/CXgG3niohhSmIi6KTrcUaL2VPb06FQqwloD4DPRdYGK2JIb/NL40MHle0BOZVAY4
	 4Q82v9QIfSZ1cifP/C5l0ddpYSNhWfgDdCpaYXl592G3KSM0iE9DeyT9p3Myolgbma
	 lMJh2dsAYl1XPrm0k+1fiLE2/MqqWiV7Eb4a0PYJLuSuHQct4Qqn1RMcfQ+rypQ+TR
	 7AzJUSrudgCOjWFcPSmyBXQG+yfCfcZoKaI352DhsZng7cM3l2H4dLPvbHGf0P09Gl
	 E2uwucgb6HloQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5831DECAAD5
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 08:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166279865333.12650.5779992034141987633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99ffd9b3bae40167f2471077927af8e945745458300a9e8a8ee5c400b4a08602
Date: Sat, 10 Sep 2022 08:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662798653
