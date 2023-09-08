Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EB7315BB
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 02:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0662C433C8
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 02:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694141648;
	bh=nqTpMHEx0HlRXZfLGstK1FAgxyLvQPE76FX/FyMcfS4=;
	h=To:Subject:From:Date:From;
	b=IWkwaL5REf2Yoq+EGPOHJUKrMrix2iIhub2ScRoKplOg4qADAAJO01cGDhvTXJhYO
	 j1/F+l7S9LCx5o01OKiBr99ANmjNAdE5Q78TyMY1znFvGwUNr8gFUQXnoOSJdsZsrG
	 YjKflz+KB3vqelydkULfq2jx7oDPrNfqs4Or5gfWNBpkkBQtq1HntsKGyGQbRmYHE2
	 kpcyDm+nKsik0pZJIPzuAnlsOTUpYGJI2rfpOaXWt4lhOSGZ9PF/R7Tilo/EBfWgMF
	 Yin/Q2trAyZnyhJ9ne9d5vknyS7DZ9NljqhBuB+VlTeRvY+zgixQ0jCppLhwu/tuoe
	 9RJYludta4FUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4761EC8732
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 02:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169414164879.25055.3040648074073982392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a8d6559e5a53eb4417ee7c79b414f65eda0d191b80ce21a736f492ce6f0eb2e
Date: Fri, 08 Sep 2023 02:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694141648
