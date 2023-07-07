Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C7E0BA2F
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 10:27:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7627C433C7
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 10:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688725628;
	bh=UoS+O7EIe+eEVpafubKz3Drgps2KBhNCXwkoj/Yqdnw=;
	h=To:Subject:From:Date:From;
	b=kRRGFfaJefgxXdTfdrOnTKrH9MA28YydsVdwj9Nh2VVdngA9AttaUz+2g8GDpKGUS
	 +8dIEBno/GocZ/N+nSWZP8skkFusW11rSfwqFHY2T36twbn8EZYkSNqRePgouHKnts
	 VnLhxMUIYhK3/iQZXQVae9y6EPZUHrsXcIIakkuKoz7QrL74O8qMD2RHOxT1acf/PJ
	 7KOL5u/XoWtWADYnzNNkhIBCAIJgQExY0H91pZsmxFvg7UUI4Nd0RLV1HZOm31LOax
	 YJZm9NUQaKTd2/XW5QghEwhN30cOfKRsHqtL1Wi9VwA0D/HOc9cmBn+VYfR2c71GNI
	 wlPrVVF18I4NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A85EFEB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 10:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168872562868.19755.2147154626484945581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a93c7872b5c4842f5ab2f20d4706832729402235e410440a874e150afa5e7205
Date: Fri, 07 Jul 2023 10:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688725628
