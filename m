Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B782F7E
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 07:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72331C433D6
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 07:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665126653;
	bh=r+FM7kehTfs482/bEERcMqnHxp/4UINvHKJoNyp1it0=;
	h=To:Subject:From:Date:From;
	b=A9DUw/ouoDnCHQzaHCU87bVYrQ/EdG2pqjIkr0OAsex3oVC6j06wCU0XMXGXSdL64
	 Hsu2s/83tncLnVdq5WQ8CGRCPvEGkThWhUbcpSe2/sEO4dXNqNkQZpK6LOZinTmF7S
	 hQjJV88i7/JEbBkW95nnUTUY1tZ1m0BOC2KfN88mAGpR0+JHCA1Aj/w5tz2XAxoKN7
	 PUXRwkpkq2PmDJtqA9XNFf/QYB1wS5Sb3hkK7BMNo9ir/LxsSC6erZ+gwuwZ08TZN0
	 2j4IVDUO1Em6bprb9LCG0NVocR/WAsq6cjgNXIwEnVvQwQ0tqgv7UfqSaLADM6U2pj
	 rlC2noiu2RDEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53E8EC433FE
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 07:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166512665333.27222.9187437500345520310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 693588d80e68ac47d6435a993fc579af6b9362c166f914a86b9dc17221eb7448
Date: Fri, 07 Oct 2022 07:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665126653
