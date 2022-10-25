Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC8B1654
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 00:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70C47C433B5
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666658453;
	bh=9f06eslU2Q3a+e3GcAv0DkXESrKN3ZblFUO8q0zy2gQ=;
	h=To:Subject:From:Date:From;
	b=qwuw/H79aIz1Lk/95XRr7xoKStGs63r5Faa4kNxK2B0Zy/Xjhgayd+H3FJi3x3lD6
	 jOJlhoIBnwY6J0Zo3Qq7t1CSEa1oEDTZpSdsvP3w7iL/Ycy/GXSG2jM1j1qKTS1iP9
	 av8I/9stWmiktHIqMlyBVp18gSb90DF1n4tPgfOkklb/7hlSgNbEcpTHRUnv7LNubw
	 RgKLeAmHIciR8wuMX75FjLsaX3I2GT/imds/ucGzuZokWLxF3khzGCRY8IhGVeO0Nf
	 lNfUimwB6EGbvbkxWi7C+mVuX9SB355DQUIYQi7ov/Sgg/8QSH6xOxJsh/oYVb6DpV
	 ftBCRmAIQZLGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53AA3C38A2D
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 00:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166665845333.18771.18140611687590714549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78b1b77bb6a104edfecedabf2982add187eb3b412888b8a8ee8cfb0bfecb3663
Date: Tue, 25 Oct 2022 00:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666658453
