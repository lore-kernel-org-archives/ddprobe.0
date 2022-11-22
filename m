Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EE4717CA3
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 22:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B1F9C433C1
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 22:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669157454;
	bh=mFM+L4bpzpJNWKtbtq3sXyeCp5QNgv4TkwrslTXNLZ8=;
	h=To:Subject:From:Date:From;
	b=TtaFLorFTlle2l+245YFzweIIvu4CsLxYyVgj79A78pw8EXdzw5TiW/dw83uOa3op
	 k+QcKUYrdu0ts1/X9Oh0ScQj8VK2tLyC7V1sE3BFuHVCwALLPncPgPpQF5hIGptjHd
	 M9KrcRqB5RXyldO0M5gEgQuJT+hFImVxIJ5nsLobzjN3hnMRCWXsCszQzgNbweZOU2
	 EJAhMQFlNkbQxJPfvERC9V+Y8vxrFyqCyHFeipRdkVlM3xmjPFP9uce2QUnCFUET5P
	 K2l28IaT9XfWqSWm4Jyf+vOSHASoYTdKjUqxXWYY19a+hUQ2VgYdqkFkohwGYc1JLw
	 8ATGQHqAFTFfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6ECB5C4332F
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 22:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166915745443.19013.3779729386268599023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 062b457f5841a6dcc1171379113a2519898dfa2563a990fa76c100d9aff15514
Date: Tue, 22 Nov 2022 22:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669157454
