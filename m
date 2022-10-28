Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7F5712292
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 20:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7120BC433D6
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 20:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666987254;
	bh=HwXPbBBqLA1WbN4V+kgNsdfcbD4UbHPcm5JwmJeqjj4=;
	h=To:Subject:From:Date:From;
	b=spgmPGfKb49h3FFpm1d2TlDwZZs/IqtbraGA7/fWNDUzWsVwR+aSx5MEnQ6FTALH0
	 UIxHz2IJjQPpYo4CVqI5CKcaNYM0VAmODLMTL0E5mGds0VEvTpFaiNtVUJoNJ60IWJ
	 lLDAmNi7x/VYgBWHmyCJfYLTnD9i+npf23sX4x7fBKiY5eYrQvLQMB6E+YYJXnRELC
	 xqGwjQ5XugGK9+S+BfNqhu3h6poEGp0X4iwbEC565YZ4OmruA+mMR9U3Gz+2CjH8oH
	 PTOB8ZWfwMi9k2WHhxp4f9oqT+AfrFHIGJ5zNSnONEofH1yKu/V7LL+eDKrDt885+O
	 zDjd7mWlQ0wYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 531D6C38A02
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 20:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166698725433.30360.9035546291201990074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce94aee0e8cd2202de879f36a4c31a71eddad1e6f3a7c1097ddf13720744ea49
Date: Fri, 28 Oct 2022 20:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666987254
