Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 244192105
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 10:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I5iBMt5t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC89C433C7
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 10:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698749296;
	bh=CzzLItrrFMxCyTWLm0B0+e9mFzCdkwqzEMbnsbdxw4c=;
	h=To:Subject:From:Date:From;
	b=I5iBMt5tU60eKDBqKuERVLhjV7YKWfjl4luSSuQWV4uYMy6p64WdJnB2/GmJhdjt2
	 zS5eseT8xp6Kv5S1cAVjBDntLOLYhLxSNHacWTR5evV9adwIo1/Zr1WrBBoxI1dFAj
	 a3Z6PCNJ7/NgJjz/iITEBnX14zeKJ+dX8bt58Gz+Jodo4LwWAY/15bQ2zU9ZNEWLDH
	 9g39VtBjUzMwXtrnvTpRYxr1zUzbnN+Ufpbx8zYJOh7q64uZgTUa+iGCI/kaf3yjdd
	 6uxHtWeZ1clVTsc6q7DAZcE6GUGUVhVR5YuET460BwhkssBLOLUnzJvt1rM+WhHqrp
	 De6SxF3L1Y4dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70CE6C4332F
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 10:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169874929644.1756.11079519392749069644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e06b05d7a245b02ff6b40767769472008c8a555da5ed40e4bfd75914cc44a28
Date: Tue, 31 Oct 2023 10:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698749296
