Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F71020311
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 23:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nGEVfKwX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8273EC433C7
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 23:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700351296;
	bh=1i3kK7h6ZgR47FfgZVovlg6s1BI+MwUhNNnPw1lqUKs=;
	h=To:Subject:From:Date:From;
	b=nGEVfKwXQ83QWBXf8NC6vQGy0+gYV2WW8tR3RTL8qj4nzhH+26E4pXjxaLjlwaXvk
	 IFYGYWSM3wbWjfW7DHfIhR5EvjaThZaHKivCML4S60bS80vOPrELpL2sqRmSC4M1Q3
	 ZkpZQ2Ak0h5BZQB8iO1xvNK0qrxazHePlOKku6NnnzEzhDh0OqtQiL1ovrGx79Ahz9
	 G0Kb3XtXlyqhynZh07/jCuTbrrcVP5xPayahfFA67n4I9WCWmJt1rTumbOGIUtnl65
	 XzuU0QPCmBgllAcdnnpFAD91gdD+46GNLkSWsCkHkWc/ngYyiMd/YQq1KZHIL/dVTz
	 jxF8hzg3HJ56g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64BCDC2BB3F
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 23:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170035129639.28062.16034732771960476458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b654d5f743905cc9dcc82ed17e5d8236800d975b55164ab326e51035fde70f8
Date: Sat, 18 Nov 2023 23:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700351296
