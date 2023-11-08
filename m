Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 011C838DE0
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 23:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YFnfpW6v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 796FEC433C8
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 23:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699487296;
	bh=loZjldHa5BGrK+gkICnCB8gSFETuvScAJ74AissZsx0=;
	h=To:Subject:From:Date:From;
	b=YFnfpW6vFS5XwESh4qXY/4G8F9eMkcUqCQBh1r9njdAX1KNjaeANLO74xpeDxOVBO
	 xTaPEB8IUiPkB3fD8/S2xu1OKCInxwDg0wJUqs4NlJvPHSYVv6FfY5c+j43RdUFVZp
	 ny525HzarAisgOujyILlQHFbE3VhkvAC0LNlJrqLJj5v7phPOrEY4CzzW0Zvw05KDw
	 2Zs9x9W7n7cbCYK7+34qni5E3Am74hiFBmQ0cJXKacNV2AY30IdTxbWedpRRDV8lSc
	 WPikT73/wsDI1bCs4n8NLHKFeX37Kx0cKnA8lZKFh0UYKgkuivr6g5pZin7A7/dKHY
	 oIEhfDylWAXDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EE19C4332F
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 23:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169948729638.20729.18420756980405538701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31ad50d7d1a43e76db4545f6d974bb6b6e8690760af7cc389405414e3d180cd4
Date: Wed, 08 Nov 2023 23:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699487296
