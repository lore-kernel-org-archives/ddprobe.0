Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E15C6AAE
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 21:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D88DFC433EF
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 21:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679867525;
	bh=IyBRSsFLXyWYOMZ78YiwDwu/JKPn36FvTYFDs3Gf7IM=;
	h=To:Subject:From:Date:From;
	b=raCnZLJCGoNaLk6XivXhXReKRBL4yVeT20uDUytUFg+PbkP9jwB6a80tRax5yxEMM
	 MoBmu7aaonPwwW369iNslavCp22L60nRAFCULlzvjSQ+f0veKAJm7Jy1SCJEdWo7MO
	 ql8LcnfUE/ZU5jBAmNFXrK8w0gkKqJHUgz5c5R7TldhGWegK8qHYBu/j/PLRNFjsZQ
	 Ld0gUjCm4sM/bqBqAnfx23bRce9YMZKfsc6yREqgwz03QCttBj2qAdSVRVFK/1aWcF
	 Z/3AtNH5mV1w7vQu95l+Fz6NfoJ3MCB1gM7p6bwdoZLUw02FRcz4W1AIt1NO0HXOCc
	 sHkEBY9uNmx0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBC47C7619A
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 21:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167986752575.31024.15542859676824111500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 383aa2e3fb3dba59ff6f40f60f4c1a3a1cd87cf06eeb7b73129a57ed7d26d959
Date: Sun, 26 Mar 2023 21:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679867525
