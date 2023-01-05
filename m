Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD3C2D51E
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 15:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79E4CC433AC
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 15:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672933287;
	bh=O9Lzd4Ar/0k8WmvPqOsGbVTuUsYAf9v30CQF/tZfWmE=;
	h=To:Subject:From:Date:From;
	b=oAtFEhjPXHMgSrOop9lR6PKyi9Ka7WJ5pagfzDhmi4hxm2Jj3lKbTG6jxwAM0vlpt
	 i/m0tBn4i4tkkgit5w7YfDfB/9dfT+hZvVhYhCeHtTRT/aNBJ6+5grpGEEnAGJvRnV
	 ZiB8oxBrAFxeWRhW2xefMsUSZ/jlZ1jWnyVeV2rqNEUeq76IjJPVHnuPCkvdrmLgS0
	 LvFbLr5L6wsppMnSISRRngthZqQrqJDCR7vPN1I/VEMBUih8UEq6V1jY1TMb8wQlt9
	 fZttkRVjntRG9UHmIYzFm8Ed/F/J7npwtx6dUGVw+US2k+sl047Okq2nRw06ITJ0U4
	 cvMsjb35IkYAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6236CC54E76
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 15:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167293328739.25584.12244012203889941936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 310d2572c7361636e5a6f506d7e664370cf0644a24f6d9b9f597787389ac4e62
Date: Thu, 05 Jan 2023 15:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672933287
