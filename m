Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 602A7EA4
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 07:21:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C69C433C7
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 07:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689492068;
	bh=he4Xiu2Kf4FJWxGugBEgAqE5TjTyEwjyoqsbqJvX6Tw=;
	h=To:Subject:From:Date:From;
	b=IB8PrJJJbWv6tMJbp7fTlhr3eS2YZF1dTOQ2S1IQD6hTyY2q232fc9dxiohYmA7xK
	 cbFgvViWGV549bd7/FQx+jOPDjxPoM7/MboChw+MNkyOW6PgGQASVOVJ+4T6Jb3rGR
	 2dgeEZlB90voWZsyhO2l8//8/vtkzka1QnSIMZRn64DdRJBpa1f4vWeozfxVFCSSD5
	 bzHRQB9L0grs2mK39IDh7RpYZzL/trc3RGXAZb+9ZCY32Cod7rlgNTrXYetFqXSaBt
	 YWEhAOqCeyduTMHKpBAUyxMeIMeBc3FBsRQDNlBwWr8uLpem6qcoLjb/wgNj6KAXPw
	 JqBAkfQif0/OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B11B4EB64DA
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 07:21:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168949206869.7062.8758909601937275750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e660081b84263e4880abb8c7d6c25ae2d4617c0d8d3b0cbf64a029168f2b0fc
Date: Sun, 16 Jul 2023 07:21:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689492068
