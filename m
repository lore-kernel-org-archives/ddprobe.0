Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D6321C179
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754866794; cv=none; b=IfgFAMm6HhPe3b4a84/u/lMS3cHH0PwwPiyhxnwUdHp1oEv1/fR1cFX/d+P2ORXmoidxMzb6o6wAtssG0ghtfrFB6B3igYZxwtMD9lqj+O65KDUMpnAS0T0pBFwd3zHjtqrNCMNtMxvpq4xffgirB9YQaBudEl6IOh+MQE4v46g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754866794; c=relaxed/simple;
	bh=KtKtYPz1O2yyuW/lalA/Jxp76mu80qVJa22BxpVcdpI=;
	h=To:Subject:From:Message-Id:Date; b=pZIHB1QvdONAZqbKd7OjgkCj7SGW/qb0owHav+o58JCiC9idJ41vZ0VCnE5fPOJbd4QtmEcloGBCoi7Nj9MiDaUf9kMxQ5QPuIrTv8ZKT5t5iRBDZH+DhNDHwYJ4k6ghjBUaI2qIhUhywHuMgr1eHmlOo3jtm86BKFuKxdtDVM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iohcIUaf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iohcIUaf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A043EC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754866793;
	bh=KtKtYPz1O2yyuW/lalA/Jxp76mu80qVJa22BxpVcdpI=;
	h=To:Subject:From:Date:From;
	b=iohcIUafvqfE7j0B8+9O9EQXrg3ZXbblE2zShC1ndrWOzlsY6GcDM6GaJPF1Y3Q+a
	 KNWY8evelxcQEZAULNrMC4SrgG1pVDoK8wsvWZn+1wzLtUgAiQYaATZDTaCkpwljM/
	 aT5oVbdseaCH53nQAP5D/GRU3m8Qr6FQVzVK4JzpnCgWC2GGAAdBLbBjiJevkGIau9
	 irSZ3KSVVk68uC6BcUIVOKYXfbIlqvXwELnhblRHXzxQ3hdBSJKI/3KYg3h7bWP+BH
	 c+2aYUJVXVzbes/xfaSrdzsjaJenLbQAuzz6CJj4Yg/D5vG1qO0cKSwxV6rQ2VlHjq
	 WwmClxeFmNTBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC6DC87FDA
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175486679357.11373.11634817087090407839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efac773185aa9dbdae09e72bd0617c68a825ef6de69e503bc82ecaac5399d5e5
Date: Sun, 10 Aug 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754866793
