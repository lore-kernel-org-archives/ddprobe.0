Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDA077C
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 01:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70B50C433C1
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 01:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669685454;
	bh=4A+j8MDT/eeUWgp8qiil2EVyTlBLRPqf8tD2sooz7Yk=;
	h=To:Subject:From:Date:From;
	b=aT3UrxqSf4geVdfXwo2+ka3qv9ehD4Ht/Fdf0Syb5O3+hvyZl+4QZxjD+A4sIOFsV
	 yKf4Tmgx4LNqcWOM9SVNVFswrWjXgl7RHuKrqHnExxN5n4K27Mhf1YzwBiijwI2CLP
	 tabRPEhrAF/mNLchHWzWAXBqy6UQ7KVQLc6q3BUsQt1qgh6wUyeO3UF1BBdHBRafUn
	 7dGHgRS3p/TL0Fb6HUIyJyU2BVxddbNInPwMHn2B1BC7zmqnpOnaCfomeAnHMtVg5y
	 XsbUexc1lC5Ah5Iw/CDZvOWpTOlh9ONe4mVG5VC4DkzpodCMY9qkku3awQyEHD2p/b
	 V0s7mdxZJ6jTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55BF7C43217
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 01:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166968545434.25618.15180607908896969260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f199bfb028ed877c3b89792452e94efe44425b520911fb42e97f520b4633e09
Date: Tue, 29 Nov 2022 01:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669685454
