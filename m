Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CFF91389
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 05:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E27C433C8
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 05:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692594248;
	bh=3hdgpGBUgXsaU3h37yBD4dMu6a87qDBcuco8xdS4l2U=;
	h=To:Subject:From:Date:From;
	b=agXFipU++DjEB6h4tLbQyXFI5hLh55TBt5uk4Ox/tEo7gbnfH/OehvRiU7LFq0XiQ
	 a1t/zWPNFehclTV2Ue8hXv9h/sF7kss7dmoAFWTZ/pgD26hL5T8vNomrrC2CP7JhSB
	 f4l7NsLNcQ1Dzi/zoWacSBCnSP8bjrBJl9o0SVwEJvD8c7iGZh83Y+PN0oWwQaDBox
	 sFUT/ZLZVDPSIQmqZYJcq5hhdpW/lvRueozQLfvA4gPi4vIjXLlyY0rTdpJdsqDUET
	 isRRyofZX8o9WQW7q2aix0EnN3LQKwwUkj5bTjqhCDs+wEI6EXX5s27yYpxqjEmsbv
	 iu+970tVJAhOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B309BEE49A0
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 05:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169259424872.10081.11936704028927441992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb0029b8bc110a0e261a9f23646e2a82bd0c07e904ae3b83711c2323f039416f
Date: Mon, 21 Aug 2023 05:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692594248
