Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 628741377
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 02:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD17AC433C8
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 02:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694312048;
	bh=ez639vmZZcVq1t+Cs+lN1YpwLxnzRUa/zH8uu4UYiqQ=;
	h=To:Subject:From:Date:From;
	b=j5SQ03E8XYxQWWT1xrauN8JHwIcB7Srdg5MfT0Cd+mBdxlYXOrfsW63ovmg2P/xLq
	 A/ny87INZvbb7JzV7EmIQpqZfDxpTYPrhdGqoj/yfwBCnH26jLUfmt29CDWTnQEOov
	 Ab4x1o4ip3G2g0zd9GvYmKYwhfRxhn3QzTRoT5NMsLkjIiq8bL9tSUqSVycxOYhy/8
	 63FZJRMfW4NBPQqQCN79oFBBo3gbZUjuTxpl6IL3W0M9BuLFjKdmUI8O7Gu6t6WND2
	 h1trdYsvuMmc5up5aAFvI1UR219JrJPQQPuurvoWcadNhWbMB2utl4i3MwovDglYD8
	 IqWmB187lxksw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B49EE14C3
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 02:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169431204869.4100.6106668154617611111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29d62c08fd8701919ef3d2f7e293590fb222a30b93ba88614c4906e8fd09b2f3
Date: Sun, 10 Sep 2023 02:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694312048
