Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32CA2748E
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 17:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D26E4C433D2
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 17:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674323525;
	bh=SYQeflMHqMA5LBK8dqtCh11Qzz8zLAFMiCmNdJNWw8E=;
	h=To:Subject:From:Date:From;
	b=Xg11y38JKUme2CtBdrv8edt8YkYZ+BzItLHl/rr7i8LodjEaHQ/d5uNiZ8lZnST+z
	 B1kLOg6ZoU6duQ1SiBN0eu0/8upUNo6hgMJjh2nmxUMBJMmH2CCJpR9neBGT/VOjjg
	 I53/1M2mouvBeSDZWaCt/TAoyJzWEcuPssDKBudg0tY0THwQFfRrw8Ff+uegzAaxgH
	 L/vh8zTCVAutdZRiswqpXAvRpyG9JwgNeB//TxipqW2px9FxgVbT9OSgfq9QYT1nsy
	 /NgJfP4xioeAb53SbwiNRk2+G/ewBZZ8eh/bysKlOpDpyHCd/9/qlTJ9fYRgLnybXf
	 ALxj0Jn09QDfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9519C004D4
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 17:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167432352575.27544.18113380014394591617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ba48cac7d1708461b94118e1977b8d38c692e84b842e96fd1b1e94e86a87e09
Date: Sat, 21 Jan 2023 17:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674323525
