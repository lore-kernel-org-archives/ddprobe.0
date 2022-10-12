Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B914C191
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 00:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69A80C433D6
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665535253;
	bh=ZPbWFCQ0U4/mTNkcvm9N4ZGn3I/LDB/VNTLV6OPOOHY=;
	h=To:Subject:From:Date:From;
	b=Poigz/0rStnc5TGs0avkYp7ClEV+gx/caM9DB4p3AfQDnVdWuueyct3bErgOe389m
	 fXxqNAehDyn6Xtd4AFw1K6iD6VFhiZsOwJVk/JcVpxyIlrX0uTKo+CIDV2oihu1m3H
	 BUMwgQHpo0Hp9UyU0LpMtMGm+1jZ0oOsCrJFTeAN02MrK7V4H82eP/+pxUvuvKm5wH
	 0B+fqIho/LybfvSSccggvVZF3O0JnLjOwPCZgFrsj/6qBUGusXgVi2pSgM9bb2c430
	 SVtwkAxanvjr38awMC7NGGQHbRpg3nX3C10mQQDSFaTy3Y4ZwQvXODgr1008m2cAyQ
	 kZoHHInCKI48A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52444C433FE
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 00:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166553525332.3925.1576857380652712479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aac8dd077974ea1783a3d07db9ba3f4e3633e408e61fe43908968748a8b86ee1
Date: Wed, 12 Oct 2022 00:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665535253
