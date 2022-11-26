Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD8C72F2E
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 22:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78530C433C1
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 22:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669501854;
	bh=OoTmkPKTlLyW5cZij61uCfjiD5mpYYXa5MCnsKCNKTo=;
	h=To:Subject:From:Date:From;
	b=keiCufIcWh5u8vV6ttV8g4uxRkaBDF/VkYjL6gKEIhcTpN3ZgAKDVX1lA5WKZq/Co
	 h0BkmqPacAdT9cB3ypLBZVLlgmkPzQAgymMYJ1DGUGpIbMcSOAlEhPrFAQaummWkzy
	 wdzq3EefdwjqLsrmtgI+UuQIBueiFkNyHUHnmqolVNxRZPfXrT4dg/Uzr+1PXkyt4u
	 s2QRJncpH81Y5cdwdJ327Ix+ZdiZYt5gz/eF8qFhRpocqx5ux+dJbMeA7ue6LTxnL0
	 AKry5hFTGCC3cJjfyY03Mu+4jwFJ0EldSvGc4sxgDhaqkGL3Vdr6FXrZ+aQsPyJNYg
	 FGtDd1j2ypKpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E127C43217
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 22:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166950185434.8503.10050046403686438654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dad25c92f3ca648868e7b6c00f9c70e9a0a24a3e3005545028d9583cecce24dc
Date: Sat, 26 Nov 2022 22:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669501854
