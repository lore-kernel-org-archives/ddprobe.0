Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 511A72578
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 22:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E30EBC433D2
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 22:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681685225;
	bh=776qRkc1q6w9nka2YKaVjYigg0xB1Atuka/9R3nKy94=;
	h=To:Subject:From:Date:From;
	b=nELe5By9q6vrBNBxoj102sCJazv++DloUjSSpb2aEBxQ7GYe4y6TKtlGdwslRnfVM
	 HpMcI8hFYhNwX9qJV8MughA1mVK6aNtVMw/0IKYxxKCf9Z5zVHlfJtQbrLAD809LFp
	 +DNJKRs4sQtFyYtLqf6hx65dkR0qsgXAK4DuIJneN8kBHM3HCJ11ns4O5/0YNstBbH
	 wXfs/2Li5mLR0ebYuYfwBu/xjiLS7OCH845PE39zj8e5ZcJQiUGPTDOoNZr9FbPUHG
	 SymHXx+i+D9JVU4KpWbeIy0/347ryOd+qn76oXp0Rk7+OoLdxW/4UYLLG/Jug1C/eg
	 jNqnR++kMOtRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3C14C77B73
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 22:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168168522576.10403.8145129601666162176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2dba3bdb139e71086ed9ccd95bec0278bfddd79fb789410808c8377716e839f
Date: Sun, 16 Apr 2023 22:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681685225
