Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0EF695C1
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 19:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D358C433D2
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 19:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673032887;
	bh=ldBB275Kl6z0zhKxXlJUAx/B4DBfxJ4Z88KbRuDqkfg=;
	h=To:Subject:From:Date:From;
	b=cI82DM/xBOJSFrcITs56Lv1RYod4CmEyLVHJWxWBvWQ7uCDPqJRtNIa49jZUYNWOB
	 dD71YrYckxqsEu+lwrs9rF/uahdNLlpS4qJA/oFRjhzOjB8btik92MsUx4aMMWQLkK
	 Tb0ztJ6zWhD+0iavNV1Utp9nwlsTo8OnYLlU/NVSjE+W6XIWwwDtNFUAF43kXH4Xmq
	 EUrUchguoaMOPjhQzv8xa/35ww1pAK90arCJa32fk4Fus1l66Vr0ZQp657tP8EYd6d
	 e9Rr9bp0qSNjlpo5xJMZiAxB4ioj3XRSH3SG3qyGrC412uDEJhhxYFKEZYbEg0NysQ
	 yKpMc5t+hRk0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FFAEC3DA7A
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 19:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167303288744.7385.5068937646338526848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 150927d2a71608067db0355231160493de252b74e882e823d4f440dd2e952c42
Date: Fri, 06 Jan 2023 19:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673032887
