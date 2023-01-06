Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB6743217
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 23:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97660C433F1
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 23:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673047887;
	bh=J8Vf5c76Dr3Y25CT1kqW2+n11fhwCLdZ1R3A9glEtoI=;
	h=To:Subject:From:Date:From;
	b=K1ua1Lm0HYYBfZVRDywQAcEIbSJoseTfLXnWz3DGSJk3M3Qm1PhGDqkZckKtX/uoB
	 mWG3Urh/tUfJLNsWYe+HDDDhOtWaPhoPq2H9WnRVN6DcNSHcFDfJStlLcX/W/7OVG7
	 xbPeQ7J+xqV0ywJWgemMcboVo1XNVHQNOtWDfux9TKpFM3CvxOepPhuHcYfFSydb8y
	 LD/MIb7rDs5v0O9Q4BgTmx15ybQBmwQMaDvRffMEeG5gQYOzJqrqJRKGfobJ8/+B9m
	 cwDVT9aI+OiafC4OahYTINlc5zqTopZWu9XAFgWem4zT4vy+vLcyOHe02t7zceY4PU
	 /Zwe9Fz0DWMsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70A9FC5479D
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 23:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167304788741.10258.17744746845476214942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70aec2d8547dcefbad4dff382bc01581df63477595428a855f586e37800f04f1
Date: Fri, 06 Jan 2023 23:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673047887
