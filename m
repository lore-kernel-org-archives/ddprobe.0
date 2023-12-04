Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F054C39FD9
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 21:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e6grvT4u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 770D6C433C8
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 21:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701726496;
	bh=P0TqMYBrOsxJ3i7mMyWbCNJuyt/if3nyBpwcG+P7FCQ=;
	h=To:Subject:From:Date:From;
	b=e6grvT4u1Ja1SBHdHto6zZ8syGsBGTzT6EHGFV5zfbQgjbq2HYBHbV4qOPEqzu+R8
	 Cs2qSQCLA5a+TPWeEgz4UZeQeLVv8Q/mLWKvYoCObdczKtY/kC5WnKjWC/ikzFeVy7
	 O985+SzYJs2INLHGL0pwBLzBJgKD4n9CIEd5BO0v8hau+t4xVJ+iYqQFUg9cHXRIH2
	 4uKjxsfD0G5hNpLBT94vIdjwZGBulNqXRbYTKAtzc4+zNVaw6TXh9wV7h73711VLtB
	 Y8n7ZPpmWnZkT2MTjunWoR6MA6Wk3sRDmnLBLAszOTgbiaor+Mxr0UqU0tPEIX737H
	 elV6BPaDh1kIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E261C4167B
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 21:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170172649637.16366.16389419641204803791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 694ad2d21d414111ca4004e461f196ad2f8389cae067ab25c64cdf904e3642ec
Date: Mon, 04 Dec 2023 21:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701726496
