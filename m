Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F8A6FAA
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 14:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF95CC433EF
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 14:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679494745;
	bh=ZmuXvs9yDXjqo5l25pLrLKj6NPneAwcNRwuTevSgCgo=;
	h=To:Subject:From:Date:From;
	b=JUv/BeERecBRfKYKId/EGZlos87m0+hJWI0dIZj0GdqMd6CtX3azurcSQPnUPlZHx
	 ZPu/HU26e9TdaRJUPBQDhYl4i6Y6LIH47AYRqcZvruKUdgVGmvPlvAFht0NwvzIJKE
	 BiYFb8S0pTxNEvB2aumIHU+RY/CVlXfQ+n2IfNvQUqnl5XYL2Ij1VIEjtTqkTipOgP
	 S0l6Nr+hiKvxAg937218Gw7DuKYRMtk8B4bd7IZX8oo4+kAG/IR4TEg5tfp9ftw+Ho
	 CXWxJiGdxptCFXu4D5EHLTNRJM9OHWbbdsPMMwVKdQ+NiBKua8s56mYFKpSJgFWFw0
	 AsTma+Kg4BqeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B339DC6FD1F
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 14:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167949474572.15153.8692584466554723834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ea0bda14d97f84a9d55cbdd7e899273da14fd35a5ccf3ab4f668e3c319ccf76
Date: Wed, 22 Mar 2023 14:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679494745
