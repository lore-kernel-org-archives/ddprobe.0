Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C10BD5C80
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 18:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 739E6C433C1
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 18:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661796052;
	bh=/jXxKPdiGqxXc9odiqnPWpyMcSBKtksg+zBSWfikGfE=;
	h=To:Subject:From:Date:From;
	b=f7wG3OqqtB3Xe9op+bM2x5USfERaN/PaAZOdVXrQ5fg2/POXUy7FQWEB+enQ0kIyv
	 lPyKS/HOp7W85/kXmKDwdzcXiKMcWnRqz621Tu6z2ibdNboP66BNEqBIBn7h4o7YIQ
	 tZXTMVeZlvrWdqf9GOmCmUoll0L3oYp04hY/g8dA9LXI2uZ0spMYWVGam1KSC81OTs
	 BCWGpdJ8bo4ccXj0liRMwI+Go8YKHN6n5UG6NDq95fUia1bzN2X25NEFXBJU8FL38f
	 n+cA9wGlSO4lpYxG3HAz2JDtaVVndS09CscwahkU/JwXI2vajWNhdp93AieGpX2FQi
	 TmvS6Raaq5WlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58159ECAAA4
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 18:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166179605235.26222.9225333694124422009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb12e4a5780d23963ebd59f110b9ed9950d4c04cf2031039932d226f9f5a8bf8
Date: Mon, 29 Aug 2022 18:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661796052
