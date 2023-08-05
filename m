Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88BB15238
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 11:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCF9EC433C8
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 11:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691233988;
	bh=939Zf6bwiB8+E0VSxrwkpFWaWnDTJLHz9c/je8ls6G8=;
	h=To:Subject:From:Date:From;
	b=ddRZns0lapR7OQ5Cmrlyd7jzePDga2Q4fz3C2Z5C+mmrVZ05LyT1fx5RiKYyt4s/X
	 DG4H6dJftfKKLiM48c/4t56i/JZP1I6naCn2BJngA5y2HcQ50TpnrCd0sIFC/0rAHn
	 3CxYHsppR23hzcS3gBCAbjpOyGiChI3mPK5Bjg9CpyGuHp5repyUeypfe/jiqa8BCt
	 CiTa/UWZRkafKmdMi1MVGX6D/IoBs5sszbWDk3lOxP6zwxcpuUBTPGkix4E10g4dST
	 q6PxDN01QRi0Yx4FWJ6vw5nP4qqbXQ5qiQWZRLJhxCImNiFoU37D2ZmMt5zKqBJfuv
	 6boyNfsz6Crxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA1DCC001DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 11:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169123398870.22941.12518622115587959495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79ec67a666f1469f015be4afb74ca3ffae8b1cd8dc8a24042fb778988469fac8
Date: Sat, 05 Aug 2023 11:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691233988
