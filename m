Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AFD2408D4
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 20:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4432C433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 20:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686343685;
	bh=dyDXzpKe4E/b6Gp91BcOKongGt1NlP6JHD6D+heTEtI=;
	h=To:Subject:From:Date:From;
	b=NKvOwQN4fq07vhbAeMeMNpXXLglwEJIcH1d+erUM9qVOI2EqvF1Iw3qfj7m9ISra0
	 oZDIwdJ6gNonqdVnPo3YiFL+b6tPRVAjZnpKpAzA8rd/H7kmLdz9j131RxpHJDT+kc
	 X4EKLErNATd6aiBPzYeWOHAUbdFN58UXDZNTtnyv0/3gCrT6ZZYqKQDL9u09NY9ZBt
	 +SWDbuFI65cv8heIRCjmO9CtrcXPsuTlQg7G1OOzuVOA1vHKlaJRQ4IKKvD4/3nt38
	 4LxAClI8gymkFWoWevKOEu5XRW445oSzpjW2TYvD16sehIjjVkVgWcGiSjHuo+3OHM
	 msc0D/3vwTPNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC0DAC7EE29
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 20:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168634368576.5076.18266467926312880096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57119237f54a30038aa14faa36537e227c66dc2ed771ade4d9c63317301dc834
Date: Fri, 09 Jun 2023 20:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686343685
