Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B72877FA
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 12:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68AD0C433D6
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662813653;
	bh=xYcBiyWct5NMX1Q5ouxVQis/olTqgPtZ8IqTxnqU0Jw=;
	h=To:Subject:From:Date:From;
	b=pQrpu+DZMi+QfZ5f27AVS0HX2Q3lC/4SstzD4t2cWQvUCcQD2Bho8GU63vLw4QygZ
	 m8BPqdqBXOQhk2nyqhOdqY1ssxSJindqLFdhSvkzF8r9Fxv5axSUApWPKPnO4SfvUS
	 k7rQPIbxusnIMJk9ZcugwA5OoryKSvfWiK8nTydq7xsV+3rxgVZX1NO5wxYD0pbeDL
	 WDtAhZLzf2rMi8BSgPPO9TA+CsEgtUzTRz2N75016K1DkFxCerBVsUtTISAUBbtQ3k
	 eSh2WcsCq6CVf7ggrlY8eO3Rc8JDtXdI/D4JIBggHjGgPFXlZQIDlMVyfEWd+tZFLs
	 6Q8L149IxeK7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51C71ECAAD3
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 12:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166281365332.8091.12781170829696054808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c67f05c61065141211a6da798bfc46102f5806cb928953142903024f228f21f0
Date: Sat, 10 Sep 2022 12:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662813653
