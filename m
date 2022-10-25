Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8F3D817
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 18:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E30EC433C1
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 18:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666722653;
	bh=2vk6UmJp4AEm6TRdeZ3xzf/OtvaByNl+jk6xT5qOls4=;
	h=To:Subject:From:Date:From;
	b=OX1fQKLgOb7dyhWIWFi3mcFxlhBEMnRIiHrIzPhwYu1zyEWwp7divje2rM8WVpXR4
	 Xh0elbWytqY4nbx1ICok7nhriIOR5AEIUA2F28p6P/eHhybaDcK/CgiCaQeO5aCrmL
	 s7+0ewre6gisQ4v/Vv3SXuHFkj/mYW+OEfmAnyxPLv522FOODRaucch8VVMwuto4Xc
	 IdYLhRIW+eJxCXT01tOrEaST2DLYfsGW8lxwmIw2qFxbWBUQWJny76k9nvh4wEdPip
	 prGLo7xxhhxQi/Hy2LlgNXLrbGGc0gEIsxkZ4B+ViUH4LiZsn+ClmZ20aDqiiCY7S8
	 ALA2yD2vu/Rcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54B22C38A2D
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 18:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166672265333.6677.5489587703119417902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dd6e3510bea47cda1a8d068a3cef3cdd2bf6e59dc278ba1409af7379f8d5bc7
Date: Tue, 25 Oct 2022 18:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666722653
